/**
 * @file        master_engine.js
 * @description Central polyphonic voice routing, modulation, duration compensation,
 *              real filename tracking, 2D/3D trajectory parameter generator,
 *              selective panic controller, forward/round-robin sequencer,
 *              and external harmonic scale quantizer with discrete octave shifting.
 * 
 * =============================================================================
 * TECHNICAL ARCHITECTURE & DOCUMENTATION
 * =============================================================================
 * 1. PITCH COMPENSATION ENGINE:
 *    - Mode 0 (Straight) : Natural buffer duration.
 *    - Mode 1 (Random)   : Exact integral compensation for linear transposition ramps.
 *    - Mode 2 (Envelope) : Compensation for break-point envelope speeds.
 *    -> Guarantees envelope generators (zigzag~) finish synchronously with playback.
 * 
 * 2. REAL FILENAME TRACKING & MONO DOWNMIX:
 *    - Intercepts "shortname <idx> <name>" messages from [polybuffer~] to retain
 *      the genuine soundfile name on disk instead of generic identifiers ("pbuf.1").
 *    - Emits internal buffer name to [mcs.poly~] for audio DSP lookup, while
 *      routing the authentic soundfile name to [jsui] for visual monitoring.
 *    - Reads native buffer channel count (chans) for equal-power voice normalization.
 * 
 * 3. DECIBEL AMPLITUDE CALIBRATION:
 *    - ampMin & ampMax configured in Decibels [-90.0 dB ... +24.0 dB].
 *    - Uniform random sampling across the decibel space to guarantee musically
 *      perceptual balance, subsequently converted to linear amplitude for audio DSP.
 *    - Exact dB telemetry routed to [jsui] for true peak-meter visualization.
 * 
 * 4. 2D / 3D SPATIALIZATION COORDINATES:
 *    - Coordinate Space Conventions:
 *      * X (Azimuth axis)   : Range [-1.0 ... 1.0] (Left: -1.0, Center: 0.0, Right: +1.0)
 *      * Y (Depth axis)     : Range [-1.0 ... 1.0] (Back: -1.0, Center: 0.0, Front: +1.0)
 *      * Z (Elevation axis) : Range [ 0.0 ... 1.0] (Floor: 0.0, Median Ear Level: 0.5, Ceiling: 1.0)
 *    - Mode Switching (toggle: is3D <0|1>):
 *      * is3D == 0 : Z locked strictly to 0.5 (horizontal listener / speaker ring plane).
 *      * is3D == 1 : Autonomous Z trajectories in [0.0 ... 1.0].
 * 
 * 5. COMPACT 9-ELEMENT SPATIAL STRIDE:
 *    - Emits 3 uniform triplets: [start, end, dur] per spatial dimension:
 *      [xStart, xEnd, spatDur, yStart, yEnd, spatDur, zStart, zEnd, spatDur]
 * 
 * 6. SELECTIVE ACTIVE-VOICE PANIC CONTROLLER:
 *    - Maintains an internal timestamp registry of currently executing voices.
 *    - Targets only running voices via individual "target <voiceID>" commands,
 *      leaving idle/muted voices unaffected and preventing unnecessary DSP awakenings.
 *    - Broadcasts panic fade-out duration (stopDur) simultaneously to [mcs.poly~]
 *      and [jsui] for synchronous audio/visual release.
 * 
 * 7. PLAYBACK SEQUENCE MODES (playMode <0|1>):
 *    - Mode 0 (Round-Robin / Random Urn) : Random permutation cycle over loaded buffers
 *      without repetition until all files are consumed, then auto-reshuffles.
 *    - Mode 1 (Forward / Sequential)     : Linear step-by-step advance through buffers
 *      in loaded order (0, 1, 2, ... N-1, 0, 1, ...), looping indefinitely.
 *      Activating Mode 1 (playMode 1) resets the sequence index to 0.
 * 
 * 8. HARMONIC RATIO QUANTIZER & OCTAVE SHIFTER (harmonicMode <0|1>):
 *    - Mode 0 (Continuous Float) : Uniform random pitch drawing between transpoMin & transpoMax.
 *    - Mode 1 (Quantized Modal)  : Constrains playback speed to 12-TET interval ratios:
 *      Ratio = 2^(semitones / 12.0) drawn randomly from the active scale sent by [dict].
 *      In this mode, transpoMin and transpoMax are converted to discrete integer octave bounds
 *      [octMin ... octMax] = round(log2(transpo)), multiplying the modal degree by 2^k.
 * 
 * @version     3.8.0
 * @author      Max Bruckert (2026)
 * @date        2026
 * @compatible  Max 8, Max 9 (Standard JS Engine)
 */

inlets = 1;
outlets = 3;

setinletassist(0, "Controls, polybuffer~ dump/shortnames, mode selector, and modulators");
setoutletassist(0, "Playback messages to [mcs.poly~ polyplayer-MONO 32] (Inlet 1)");
setoutletassist(1, "UI telemetry monitoring to [jsui poly_monitor.jsui]");
setoutletassist(2, "Total count of active buffers (int)");

// =============================================================================
// STATE & RUNTIME STORAGE
// =============================================================================
var files = [];
var urnPool = [];
var forwardIndex = 0;
var realNamesMap = {};
var currentVoice = 1;
var maxVoices = 32;

// Active voice registry: stores expiration epoch timestamp per voice index
var activeVoicesRegistry = {};

// Modes & Toggles
var currentMode = 0;
var playModeState = 0;   // 0 = round robin (urn), 1 = forward (sequential)
var _is3D = 0;

// Harmonic Modal Quantization
var _harmonicMode = 0;   // 0 = continuous float, 1 = quantized scale
var _includeRoot  = 1;   // 1 = semitone 0 included automatically
var _activeScaleRatios = [1.0]; // Active playback speed ratios

// Amplitude Modulators in Decibels [-90.0 dB ... +24.0 dB]
var _ampMinDb = -18.0;
var _ampMaxDb = -3.0;
var _ampDur = 0.0;

// Spatial Interpolation
var _spatDur = 1000.0;

// Transposition & Pitch Modulators
var _transpoMin = 0.8;
var _transpoMax = 1.2;
var _transpoDur = 150.0;
var _transpoProba = 100.0;
var _transpoStable = 1.0;

// Phase Vocoder / Time-Stretch Settings
var _stretchOn = 0;
var _stretchTranspo = 1.0;

// Dynamic Envelope Percentages
var _fadeInPct = 5.0;
var _fadeOutPct = 25.0;

// Panic Controller Fade-Out Duration (ms)
var _stopDurVal = 100.0;

// =============================================================================
// MATHEMATICAL UTILITIES
// =============================================================================
function dbToLinear(db) {
    if (db <= -90.0) return 0.0;
    return Math.pow(10.0, db / 20.0);
}

function semitoneToRatio(semi) {
    return Math.pow(2.0, Number(semi) / 12.0);
}

// =============================================================================
// HARMONIC RATIO MANAGEMENT
// =============================================================================
function harmonicMode(v) {
    _harmonicMode = parseInt(v, 10) ? 1 : 0;
}

function includeRoot(v) {
    _includeRoot = parseInt(v, 10) ? 1 : 0;
}

function harmonyList() {
    var rawIntervals = arrayfromargs(arguments);
    var intervals = [];

    if (_includeRoot) {
        intervals.push(0);
    }

    for (var i = 0; i < rawIntervals.length; i++) {
        var semi = Number(rawIntervals[i]);
        if (!isNaN(semi)) {
            if (intervals.indexOf(semi) === -1) {
                intervals.push(semi);
            }
        }
    }

    if (intervals.length === 0) {
        intervals.push(0);
    }

    _activeScaleRatios = [];
    for (var j = 0; j < intervals.length; j++) {
        _activeScaleRatios.push(semitoneToRatio(intervals[j]));
    }
}

// =============================================================================
// SETTERS & INLET COMMAND HANDLERS
// =============================================================================
function playMode(v) {
    var nextMode = parseInt(v, 10) ? 1 : 0;
    if (nextMode === 1) {
        forwardIndex = 0;
    }
    playModeState = nextMode;
}

function mode(v) {
    currentMode = Math.max(0, Math.min(2, parseInt(v, 10)));
}

function is3D(v) {
    _is3D = parseInt(v, 10) ? 1 : 0;
}

function ampMin(v) { 
    _ampMinDb = Math.max(-90.0, Math.min(24.0, Number(v))); 
}

function ampMax(v) { 
    _ampMaxDb = Math.max(-90.0, Math.min(24.0, Number(v))); 
}

function ampDur(v) { 
    _ampDur = Math.max(Number(v), 0.0); 
}

function spatDur(v) { 
    _spatDur = Math.max(Number(v), 0.0); 
}

function transpoMin(v) { 
    _transpoMin = Math.max(Number(v), 0.001); 
}

function transpoMax(v) { 
    _transpoMax = Math.max(Number(v), 0.001); 
}

function transpoDur(v) { 
    _transpoDur = Math.max(Number(v), 0.0); 
}

function transpoProba(v) { 
    _transpoProba = Math.max(0.0, Math.min(100.0, Number(v))); 
}

function transpoStable(v) { 
    _transpoStable = Number(v); 
}

function stretchOn(v) { 
    _stretchOn = parseInt(v, 10) ? 1 : 0; 
}

function stretchTranspo(v) { 
    _stretchTranspo = Number(v); 
}

function fadeInPct(v) { 
    _fadeInPct = Number(v); 
}

function fadeOutPct(v) { 
    _fadeOutPct = Number(v); 
}

function stopDur(duration) {
    if (typeof duration === "number" && duration >= 0) {
        _stopDurVal = duration;
    }
}

// =============================================================================
// SELECTIVE PANIC ROUTINE
// =============================================================================
function panic() {
    var currentTime = new Date().getTime();
    var targetedVoices = [];

    for (var v = 1; v <= maxVoices; v++) {
        if (activeVoicesRegistry[v] && activeVoicesRegistry[v] > currentTime) {
            outlet(0, "target", v);
            outlet(0, "panic", _stopDurVal);
            targetedVoices.push(v);
        }
    }

    activeVoicesRegistry = {};

    if (targetedVoices.length > 0) {
        var msg = ["panic", _stopDurVal].concat(targetedVoices);
        outlet(1, msg);
    }
}

// =============================================================================
// POLYBUFFER~ MANAGEMENT & REAL FILENAME RESOLUTION
// =============================================================================
function count(n) {
    files = [];
    urnPool = [];
    forwardIndex = 0;
    realNamesMap = {};
    activeVoicesRegistry = {};
    outlet(2, parseInt(n, 10));
}

function shortname() {
    var a = arrayfromargs(arguments);
    if (a.length >= 2) {
        realNamesMap[a[0]] = String(a[1]);
    }
}

function list() {
    var a = arrayfromargs(arguments);
    if (a.length >= 3) {
        var bufId = a[0];
        var bufferSymbol = a[1];
        var channels = parseInt(a[2], 10) || 1;
        var duration = a[3] || 0.0;
        var realFileName = realNamesMap[bufId] || bufferSymbol;

        files.push({
            id: bufId,
            bufferName: bufferSymbol,
            displayName: realFileName,
            chans: channels,
            duration: duration
        });
    }
}

function dump_done() {
    resetUrn();
    forwardIndex = 0;
    outlet(1, "status", "ready", files.length);
}

function resetUrn() {
    urnPool = [];
    for (var i = 0; i < files.length; i++) {
        urnPool.push(i);
    }
}

function clear() {
    files = [];
    urnPool = [];
    forwardIndex = 0;
    realNamesMap = {};
    activeVoicesRegistry = {};
    currentVoice = 1;
    outlet(2, 0);
    outlet(1, "status", "cleared");
}

// =============================================================================
// PRIMARY TRIGGER & CALCULATION ENGINE
// =============================================================================
function bang() {
    if (files.length === 0) return;

    var file;
    if (playModeState === 1) {
        file = files[forwardIndex];
        forwardIndex = (forwardIndex + 1) % files.length;
    } else {
        if (urnPool.length === 0) resetUrn();
        var pIdx = Math.floor(Math.random() * urnPool.length);
        file = files[urnPool.splice(pIdx, 1)[0]];
    }

    var voice = currentVoice;
    currentVoice = (currentVoice % maxVoices) + 1;

    // Decibel sampling & linear conversion
    var minDb = Math.min(_ampMinDb, _ampMaxDb);
    var maxDb = Math.max(_ampMinDb, _ampMaxDb);
    var ampStartDb = minDb + Math.random() * (maxDb - minDb);
    var ampEndDb = (_ampDur > 0.0) 
        ? (minDb + Math.random() * (maxDb - minDb)) 
        : ampStartDb;

    var ampStartLinear = dbToLinear(ampStartDb);
    var ampEndLinear = dbToLinear(ampEndDb);

    // ADM spatial trajectories [-1.0 ... 1.0]
    var xStart = Math.random() * 2.0 - 1.0;
    var xEnd = (_spatDur > 0.0) ? (Math.random() * 2.0 - 1.0) : xStart;

    var yStart = Math.random() * 2.0 - 1.0;
    var yEnd = (_spatDur > 0.0) ? (Math.random() * 2.0 - 1.0) : yStart;

    // Convention ADM : en 2D, l'élévation d'écoute médiane est Z = 0.5
    var zStart = 0.5;
    var zEnd = 0.5;
    if (_is3D) {
        zStart = Math.random();
        zEnd = (_spatDur > 0.0) ? Math.random() : zStart;
    }

    // Compensated playback duration & transposition calculations
    var pitchStart = 1.0;
    var pitchEnd = 1.0;
    var tDur = _transpoDur;
    var effectiveDuration = file.duration;

    if (currentMode === 0) {
        pitchStart = 1.0;
        pitchEnd = 1.0;
        effectiveDuration = file.duration;

    } else if (currentMode === 1) {
        if (_harmonicMode === 1 && _activeScaleRatios.length > 0) {
            var octMin = Math.round(Math.log(_transpoMin) / Math.LN2);
            var octMax = Math.round(Math.log(_transpoMax) / Math.LN2);
            if (octMin > octMax) {
                var tmp = octMin;
                octMin = octMax;
                octMax = tmp;
            }

            var octShiftStart = octMin + Math.floor(Math.random() * (octMax - octMin + 1));
            var multStart = Math.pow(2.0, octShiftStart);

            var idxStart = Math.floor(Math.random() * _activeScaleRatios.length);
            pitchStart = _activeScaleRatios[idxStart] * multStart;

            if (tDur > 0.0) {
                var octShiftEnd = octMin + Math.floor(Math.random() * (octMax - octMin + 1));
                var multEnd = Math.pow(2.0, octShiftEnd);
                var idxEnd = Math.floor(Math.random() * _activeScaleRatios.length);
                pitchEnd = _activeScaleRatios[idxEnd] * multEnd;
            } else {
                pitchEnd = pitchStart;
            }
        } else {
            pitchStart = _transpoMin + Math.random() * (_transpoMax - _transpoMin);
            pitchEnd = (tDur > 0.0) 
                ? (_transpoMin + Math.random() * (_transpoMax - _transpoMin)) 
                : pitchStart;
        }

        var avgRampSpeed = (pitchStart + pitchEnd) * 0.5;
        var bufferConsumedDuringRamp = tDur * avgRampSpeed;

        if (bufferConsumedDuringRamp >= file.duration && tDur > 0.0) {
            var accel = (pitchEnd - pitchStart) / tDur;
            if (Math.abs(accel) > 0.00001) {
                var delta = pitchStart * pitchStart + 2.0 * accel * file.duration;
                effectiveDuration = (Math.sqrt(Math.max(delta, 0.0)) - pitchStart) / accel;
            } else {
                effectiveDuration = file.duration / pitchStart;
            }
        } else {
            var remainingBuffer = file.duration - bufferConsumedDuringRamp;
            effectiveDuration = tDur + (remainingBuffer / Math.max(pitchEnd, 0.001));
        }

    } else if (currentMode === 2) {
        pitchStart = _transpoMin;
        pitchEnd = _transpoMax;
        
        var meanSpeed = Math.max((_transpoMin + _transpoMax) * 0.5, 0.001);
        var bufOnBpf = tDur * meanSpeed;

        if (bufOnBpf >= file.duration && tDur > 0.0) {
            effectiveDuration = file.duration / meanSpeed;
        } else {
            var restBuf = file.duration - bufOnBpf;
            effectiveDuration = tDur + (restBuf / Math.max(_transpoMax, 0.001));
        }
    }

    effectiveDuration = Math.max(effectiveDuration, 1.0);

    // Dynamic amplitude envelope calculation
    var durAtkMs = effectiveDuration * (_fadeInPct / 100.0);
    var durDcyMs = effectiveDuration * (_fadeOutPct / 100.0);
    var durHoldMs = Math.max(effectiveDuration - (durAtkMs + durDcyMs), 0.0);

    // Register voice expiration timestamp
    var currentTime = new Date().getTime();
    activeVoicesRegistry[voice] = currentTime + effectiveDuration + 50.0;

    // 1. Dispatch playback message to [mcs.poly~] (Inlet 1)
    outlet(0, "target", voice);
    outlet(0, "play", 
        file.bufferName, 
        effectiveDuration, 
        file.chans, 
        ampStartLinear, ampEndLinear, _ampDur, 
        xStart, xEnd, _spatDur, 
        yStart, yEnd, _spatDur, 
        zStart, zEnd, _spatDur, 
        pitchStart, pitchEnd, tDur, _transpoProba, _transpoStable, 
        _stretchOn, _stretchTranspo, 
        durAtkMs, durHoldMs, durDcyMs
    );

    // 2. Dispatch UI telemetry entry to [jsui poly_monitor.jsui] (Inlet 1)
    outlet(1, "entry", 
        voice, 
        file.displayName, 
        file.chans, 
        _spatDur.toFixed(0), 
        pitchStart.toFixed(2), pitchEnd.toFixed(2), 
        ampStartDb.toFixed(1), ampEndDb.toFixed(1),
        effectiveDuration
    );
}