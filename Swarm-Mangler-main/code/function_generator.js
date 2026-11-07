/**
 * @file        function_generator.js
 * @description Breakpoint Function (BPF) generator (0.0 to 1.0) and synchronous
 *              interpolation table writer for [buffer~ pitchcurve] with conformal curvature.
 * @author      Max Bruckert (2026)
 * @compatible  Max 8, Max 9
 */

inlets = 1;
outlets = 2;

setinletassist(0, "Commands or dump stream (outlet 2 of [function])");
setoutletassist(0, "Commands directed to [function] object");
setoutletassist(1, "Bang upon buffer write completion");

var TARGET_BUFFER = "pitchcurve";
var BUFFER_SAMPLES = 1024;

var _dur = 1000.0;
var _points = 4;

var bpfPoints = [
    { x: 0.0, y: 0.0, curve: 0.0 },
    { x: 1000.0, y: 1.0, curve: 0.0 }
];

var dumpTask = new Task(finalizeDump, this);
var isCollectingDump = false;

function dur(v)    { _dur = Math.max(Number(v), 10.0); }
function points(v) { _points = Math.max(parseInt(v, 10), 2); }
function target(name) { TARGET_BUFFER = String(name); }
function samps(n)  { BUFFER_SAMPLES = Math.max(64, parseInt(n, 10)); }

// =============================================================================
// DUMP STREAM RECEPTION FROM [function]
// =============================================================================
function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 2) return;

    if (!isCollectingDump) {
        bpfPoints = [];
        isCollectingDump = true;
    }

    var xVal = parseFloat(a[0]);
    var yVal = Math.max(0.0, Math.min(1.0, parseFloat(a[1])));
    var curveVal = (a.length >= 3) ? parseFloat(a[2]) : 0.0;

    // Assign incoming curvature to the preceding segment
    if (bpfPoints.length > 0 && a.length >= 3) {
        bpfPoints[bpfPoints.length - 1].curve = curveVal;
    }

    bpfPoints.push({
        x: xVal,
        y: yVal,
        curve: 0.0
    });

    dumpTask.cancel();
    dumpTask.schedule(5);
}

function finalizeDump() {
    isCollectingDump = false;
    bpfPoints.sort(function(p1, p2) { return p1.x - p2.x; });
    writeToBuffer();
}

// =============================================================================
// PRESET ENVELOPE SHAPES
// =============================================================================
function init() {
    bpfPoints = [
        { x: 0.0, y: 0.0, curve: 0.0 },
        { x: _dur, y: 1.0, curve: 0.0 }
    ];

    outlet(0, "mode", 1);
    outlet(0, "clear");
    outlet(0, "setdomain", _dur);
    outlet(0, "setrange", 0.0, 1.0);
    outlet(0, 0.0, 0.0);
    outlet(0, _dur, 1.0);
    outlet(0, "setcurve", 1, 0.0);

    writeToBuffer();
}

function dive() {
    bpfPoints = [
        { x: 0.0, y: 1.0, curve: -0.8 },
        { x: _dur, y: 0.0, curve: 0.0 }
    ];

    outlet(0, "mode", 1);
    outlet(0, "clear");
    outlet(0, "setdomain", _dur);
    outlet(0, "setrange", 0.0, 1.0);
    outlet(0, 0.0, 1.0);
    outlet(0, _dur, 0.0);
    outlet(0, "setcurve", 1, -0.8);

    writeToBuffer();
}

function riser() {
    bpfPoints = [
        { x: 0.0, y: 0.0, curve: 0.8 },
        { x: _dur, y: 1.0, curve: 0.0 }
    ];

    outlet(0, "mode", 1);
    outlet(0, "clear");
    outlet(0, "setdomain", _dur);
    outlet(0, "setrange", 0.0, 1.0);
    outlet(0, 0.0, 0.0);
    outlet(0, _dur, 1.0);
    outlet(0, "setcurve", 1, 0.8);

    writeToBuffer();
}

function random() {
    bpfPoints = [];

    outlet(0, "mode", 1);
    outlet(0, "clear");
    outlet(0, "setdomain", _dur);
    outlet(0, "setrange", 0.0, 1.0);
    
    var currentY = Math.random();
    outlet(0, 0.0, currentY);

    var tempPoints = [{ x: 0.0, y: currentY }];
    var dt = _dur / _points;

    for (var i = 1; i < _points; i++) {
        var t = i * dt + (Math.random() - 0.5) * (dt * 0.5);
        var y = Math.random();
        outlet(0, t, y);
        tempPoints.push({ x: t, y: y });
    }

    var endY = Math.random();
    outlet(0, _dur, endY);
    tempPoints.push({ x: _dur, y: endY });

    for (var j = 1; j < tempPoints.length; j++) {
        var c = (Math.random() * 2.0 - 1.0) * 0.7;
        outlet(0, "setcurve", j, c);
        bpfPoints.push({
            x: tempPoints[j - 1].x,
            y: tempPoints[j - 1].y,
            curve: c
        });
    }

    bpfPoints.push({
        x: tempPoints[tempPoints.length - 1].x,
        y: tempPoints[tempPoints.length - 1].y,
        curve: 0.0
    });

    writeToBuffer();
}

// =============================================================================
// CONFORMAL CURVE INTERPOLATION
// =============================================================================
function interpolate(normX) {
    if (bpfPoints.length === 0) return 0.0;
    if (bpfPoints.length === 1) return bpfPoints[0].y;

    var startX = bpfPoints[0].x;
    var endX = bpfPoints[bpfPoints.length - 1].x;
    var spanX = endX - startX;
    if (spanX <= 0.0001) return bpfPoints[0].y;

    var targetX = startX + normX * spanX;
    if (targetX <= startX) return bpfPoints[0].y;
    if (targetX >= endX) return bpfPoints[bpfPoints.length - 1].y;

    for (var i = 0; i < bpfPoints.length - 1; i++) {
        var pA = bpfPoints[i];
        var pB = bpfPoints[i + 1];

        if (targetX >= pA.x && targetX <= pB.x) {
            var segLen = pB.x - pA.x;
            if (segLen <= 0.00001) return pA.y;

            var r = (targetX - pA.x) / segLen;
            var c = pA.curve || 0.0;

            if (Math.abs(c) > 0.001) {
                var k = c * 5.0;
                r = (Math.exp(k * r) - 1.0) / (Math.exp(k) - 1.0);
            }

            return pA.y + r * (pB.y - pA.y);
        }
    }

    return bpfPoints[bpfPoints.length - 1].y;
}

function writeToBuffer() {
    var b = new Buffer(TARGET_BUFFER);
    if (!b) return;

    var totalFrames = b.framecount();
    if (totalFrames <= 0) {
        b.send("sizeinsamps", BUFFER_SAMPLES);
        totalFrames = b.framecount();
    }

    for (var i = 0; i < totalFrames; i++) {
        var normX = (totalFrames > 1) ? (i / (totalFrames - 1)) : 0.0;
        var val = interpolate(normX);
        b.poke(1, i, val);
    }

    outlet(1, "bang");
}

function bang() {
    writeToBuffer();
}
