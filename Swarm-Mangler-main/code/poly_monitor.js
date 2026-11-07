/**
 * @file        poly_monitor.js
 * @description Autonomous 32-voice monitor with real-time progress bars,
 *              dynamic multiline text-wrapping/truncation, selective panic fade-out,
 *              and complete theme serialization.
 * @version     3.13.0
 * @author      Max Bruckert (2026)
 * @date        2026
 */

inlets = 1;
outlets = 2;

setinletassist(0, "Telemetry, polybuffer dump, and dump/control messages");
setoutletassist(0, "Pass-through");
setoutletassist(1, "Attribute dump output (theme serialization)");

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// =============================================================================
// INSPECTOR ATTRIBUTES (Default visual parameters)
// =============================================================================
declareattribute("bgColor", "get_bg_color", "set_bg_color", 1);
declareattribute("cardBgColor", "get_card_bg_color", "set_card_bg_color", 1);
declareattribute("cardBorderColor", "get_card_border_color", "set_card_border_color", 1);
declareattribute("activeColor", "get_active_color", "set_active_color", 1);
declareattribute("textColor", "get_text_color", "set_text_color", 1);
declareattribute("meterColor", "get_meter_color", "set_meter_color", 1);
declareattribute("meterBgColor", "get_meter_bg_color", "set_meter_bg_color", 1);
declareattribute("fontFamily", "get_font_family", "set_font_family", 1);
declareattribute("fontSize", "get_font_size", "set_font_size", 1);
declareattribute("padding", "get_padding", "set_padding", 1);
declareattribute("cardRadius", "get_card_radius", "set_card_radius", 1);
declareattribute("borderWidth", "get_border_width", "set_border_width", 1);
declareattribute("meterHeight", "get_meter_height", "set_meter_height", 1);

var _bgColor         = [0.12, 0.12, 0.13, 0.0];
var _cardBgColor     = [0.17, 0.17, 0.18, 0.0];
var _cardBorderColor = [0.0, 0.395952, 0.392072, 0.5];
var _activeColor     = [0.0, 0.991439, 1.0, 1.0];
var _textColor       = [0.837421, 0.837421, 0.837421, 1.0];
var _meterColor      = [0.0, 0.991439, 1.0, 1.0];
var _meterBgColor    = [0.1, 0.1, 0.11, 0.0];
var _fontFamily      = "Lato";
var _fontSize        = 11.0;
var _padding         = 2.0;
var _cardRadius      = 0.0;
var _borderWidth     = 0.5;
var _meterHeight     = 4.0;

function set_bg_color()          { _bgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_bg_color()          { return _bgColor; }
function set_card_bg_color()     { _cardBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_card_bg_color()     { return _cardBgColor; }
function set_card_border_color() { _cardBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_card_border_color() { return _cardBorderColor; }
function set_active_color()      { _activeColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_active_color()      { return _activeColor; }
function set_text_color()        { _textColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_text_color()        { return _textColor; }
function set_meter_color()       { _meterColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_meter_color()       { return _meterColor; }
function set_meter_bg_color()    { _meterBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_meter_bg_color()    { return _meterBgColor; }
function set_font_family(s)      { _fontFamily = String(s); mgraphics.redraw(); }
function get_font_family()       { return _fontFamily; }
function set_font_size(v)        { _fontSize = Math.max(6.0, Number(v)); mgraphics.redraw(); }
function get_font_size()         { return _fontSize; }
function set_padding(v)          { _padding = Math.max(0.0, Number(v)); mgraphics.redraw(); }
function get_padding()           { return _padding; }
function set_card_radius(v)      { _cardRadius = Math.max(0.0, Number(v)); mgraphics.redraw(); }
function get_card_radius()       { return _cardRadius; }
function set_border_width(v)     { _borderWidth = Math.max(0.1, Number(v)); mgraphics.redraw(); }
function get_border_width()      { return _borderWidth; }
function set_meter_height(v)     { _meterHeight = Math.max(1.0, Number(v)); mgraphics.redraw(); }
function get_meter_height()      { return _meterHeight; }

// =============================================================================
// THEME SERIALIZATION & ATTRIBUTE DUMP
// =============================================================================
function dump() {
    gettheme();
}

function gettheme() {
    post("\n=== [poly_monitor.jsui] THEME CONFIGURATION DUMP ===\n");
    post("@bgColor          : " + _bgColor.join(" ") + "\n");
    post("@cardBgColor      : " + _cardBgColor.join(" ") + "\n");
    post("@cardBorderColor  : " + _cardBorderColor.join(" ") + "\n");
    post("@activeColor      : " + _activeColor.join(" ") + "\n");
    post("@textColor        : " + _textColor.join(" ") + "\n");
    post("@meterColor       : " + _meterColor.join(" ") + "\n");
    post("@meterBgColor     : " + _meterBgColor.join(" ") + "\n");
    post("@fontFamily       : " + _fontFamily + "\n");
    post("@fontSize         : " + _fontSize + "\n");
    post("@padding          : " + _padding + "\n");
    post("@cardRadius       : " + _cardRadius + "\n");
    post("@borderWidth      : " + _borderWidth + "\n");
    post("@meterHeight      : " + _meterHeight + "\n");
    post("====================================================\n");

    outlet(1, ["bgColor"].concat(_bgColor));
    outlet(1, ["cardBgColor"].concat(_cardBgColor));
    outlet(1, ["cardBorderColor"].concat(_cardBorderColor));
    outlet(1, ["activeColor"].concat(_activeColor));
    outlet(1, ["textColor"].concat(_textColor));
    outlet(1, ["meterColor"].concat(_meterColor));
    outlet(1, ["meterBgColor"].concat(_meterBgColor));
    outlet(1, ["fontFamily", _fontFamily]);
    outlet(1, ["fontSize", _fontSize]);
    outlet(1, ["padding", _padding]);
    outlet(1, ["cardRadius", _cardRadius]);
    outlet(1, ["borderWidth", _borderWidth]);
    outlet(1, ["meterHeight", _meterHeight]);
}

// =============================================================================
// VOICE STATE MANAGEMENT & NAME REGISTRY
// =============================================================================
var maxVoices = 32;
var voices = [];
var nameDictionary = {};

function resetVoices() {
    voices = [];
    for (var i = 0; i <= maxVoices; i++) {
        voices.push({
            active: false,
            panicking: false,
            name: "-",
            chans: 1,
            spatDur: "0",
            pitchStart: "1.00",
            pitchEnd: "1.00",
            ampStartDb: -90.0,
            ampEndDb: -90.0,
            startTime: 0,
            duration: 1.0,
            progress: 0.0,
            panicStart: 0,
            panicDur: 100.0,
            alpha: 0.0
        });
    }
}
resetVoices();

function list() {
    var a = arrayfromargs(arguments);
    if (a.length === 2) {
        nameDictionary[String(a[0])] = String(a[1]);
    } else if (a.length >= 3 && isNaN(Number(a[2]))) {
        nameDictionary[String(a[1])] = String(a[2]);
    }
}

var task = new Task(function() {
    mgraphics.redraw();
}, this);
task.interval = 30;
task.repeat();

function notifydeleted() {
    if (task) task.cancel();
}

// =============================================================================
// INLET COMMAND HANDLERS
// =============================================================================
function entry() {
    var a = arrayfromargs(arguments);
    if (a.length < 9) return;

    var vId = parseInt(a[0], 10);
    if (vId < 1 || vId > maxVoices) return;

    var rawName = String(a[1]);
    var finalName = nameDictionary[rawName] || rawName;

    var v = voices[vId];
    v.active = true;
    v.panicking = false;
    v.name = finalName;
    v.chans = parseInt(a[2], 10);
    v.spatDur = String(a[3]);
    v.pitchStart = String(a[4]);
    v.pitchEnd   = String(a[5]);
    v.ampStartDb = parseFloat(a[6]);
    v.ampEndDb   = parseFloat(a[7]);
    v.duration   = Math.max(10.0, parseFloat(a[8]));
    v.startTime  = new Date().getTime();
    v.progress   = 0.0;
    v.alpha      = 1.0;

    mgraphics.redraw();
}

function panic() {
    var a = arrayfromargs(arguments);
    var fadeDuration = a.length > 0 ? Number(a[0]) : 100.0;
    var now = new Date().getTime();

    if (a.length > 1) {
        for (var i = 1; i < a.length; i++) {
            var vIdx = parseInt(a[i], 10);
            if (vIdx >= 1 && vIdx <= maxVoices && voices[vIdx].active) {
                voices[vIdx].panicking = true;
                voices[vIdx].panicStart = now;
                voices[vIdx].panicDur = fadeDuration;
            }
        }
    } else {
        for (var v = 1; v <= maxVoices; v++) {
            if (voices[v].active) {
                voices[v].panicking = true;
                voices[v].panicStart = now;
                voices[v].panicDur = fadeDuration;
            }
        }
    }
    mgraphics.redraw();
}

function status(msg) {
    if (msg === "cleared") {
        resetVoices();
        nameDictionary = {};
    }
    mgraphics.redraw();
}

// =============================================================================
// TEXT WRAPPING & CLEAN TRUNCATION UTILITY
// =============================================================================
function truncateToWidth(str, maxWidth) {
    if (!str || str.length === 0) return "-";
    if (mgraphics.text_measure(str)[0] <= maxWidth) return str;
    var truncated = str;
    while (truncated.length > 1 && mgraphics.text_measure(truncated + "..")[0] > maxWidth) {
        truncated = truncated.slice(0, -1);
    }
    return truncated + "..";
}

function wrapText(text, maxWidth) {
    if (!text) return ["-"];
    var words = text.split(" ");
    var lines = [];
    var curLine = "";

    for (var w = 0; w < words.length; w++) {
        var word = words[w];
        var testLine = curLine.length === 0 ? word : curLine + " " + word;
        var metrics = mgraphics.text_measure(testLine);
        if (metrics[0] > maxWidth && curLine.length > 0) {
            lines.push(curLine);
            curLine = word;
        } else {
            curLine = testLine;
        }
    }
    if (curLine.length > 0) {
        lines.push(curLine);
    }

    // Ensure every line strictly respects maxWidth (handles long unbroken strings)
    for (var i = 0; i < lines.length; i++) {
        if (mgraphics.text_measure(lines[i])[0] > maxWidth) {
            lines[i] = truncateToWidth(lines[i], maxWidth);
        }
    }

    return lines;
}

// =============================================================================
// VISUAL RENDERING (MGRAPHICS)
// =============================================================================
function paint() {
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
    var now = new Date().getTime();

    // 1. Main background
    if (_bgColor[3] > 0.0) {
        mgraphics.set_source_rgba(_bgColor);
        mgraphics.rectangle(0, 0, width, height);
        mgraphics.fill();
    }

    // 2. 32-voice grid layout (4 columns x 8 rows)
    var cols = 4;
    var rows = 8;
    var pad = _padding;
    var cellW = (width - (cols + 1) * pad) / cols;
    var cellH = (height - (rows + 1) * pad) / rows;

    mgraphics.select_font_face(_fontFamily);

    for (var i = 1; i <= maxVoices; i++) {
        var v = voices[i];
        var col = Math.floor((i - 1) / rows);
        var row = (i - 1) % rows;
        var x = pad + col * (cellW + pad);
        var y = pad + row * (cellH + pad);

        // Progress calculation & voice extinction
        if (v.active) {
            if (v.panicking) {
                var pElapsed = now - v.panicStart;
                var pRatio = Math.min(1.0, pElapsed / v.panicDur);
                v.alpha = 1.0 - pRatio;
                if (pRatio >= 1.0) {
                    v.active = false;
                    v.panicking = false;
                    v.alpha = 0.0;
                    v.progress = 0.0;
                }
            } else {
                var elapsed = now - v.startTime;
                v.progress = Math.min(1.0, elapsed / v.duration);
                if (elapsed >= v.duration) {
                    v.active = false;
                    v.alpha = 0.0;
                    v.progress = 0.0;
                } else {
                    v.alpha = 1.0 - (v.progress * 0.25);
                }
            }
        }

        // Card background fill
        if (_cardBgColor[3] > 0.0) {
            mgraphics.set_source_rgba(_cardBgColor);
            if (_cardRadius > 0) {
                mgraphics.rectangle_rounded(x, y, cellW, cellH, _cardRadius, _cardRadius);
            } else {
                mgraphics.rectangle(x, y, cellW, cellH);
            }
            mgraphics.fill();
        }

        // Idle card border
        if (_cardBorderColor[3] > 0.0) {
            mgraphics.set_source_rgba(_cardBorderColor);
            mgraphics.set_line_width(_borderWidth);
            if (_cardRadius > 0) {
                mgraphics.rectangle_rounded(x, y, cellW, cellH, _cardRadius, _cardRadius);
            } else {
                mgraphics.rectangle(x, y, cellW, cellH);
            }
            mgraphics.stroke();
        }

        // Active voice rendering
        if (v.active && v.alpha > 0.0) {
            // Active illuminated card border
            mgraphics.set_source_rgba(_activeColor[0], _activeColor[1], _activeColor[2], v.alpha * _activeColor[3]);
            mgraphics.set_line_width(_borderWidth * 2.0);
            if (_cardRadius > 0) {
                mgraphics.rectangle_rounded(x, y, cellW, cellH, _cardRadius, _cardRadius);
            } else {
                mgraphics.rectangle(x, y, cellW, cellH);
            }
            mgraphics.stroke();

            // Progress meter track background
            var barH = _meterHeight;
            if (_meterBgColor[3] > 0.0) {
                mgraphics.set_source_rgba(_meterBgColor);
                mgraphics.rectangle(x + 1, y + cellH - barH - 1, cellW - 2, barH);
                mgraphics.fill();
            }

            // Active scrolling progress bar
            var barWidth = Math.max(0.0, (cellW - 2) * v.progress);
            mgraphics.set_source_rgba(_meterColor[0], _meterColor[1], _meterColor[2], v.alpha * _meterColor[3]);
            mgraphics.rectangle(x + 1, y + cellH - barH - 1, barWidth, barH);
            mgraphics.fill();
        }

        // Typography
        mgraphics.set_font_size(_fontSize);
        if (v.active && v.alpha > 0.0) {
            mgraphics.set_source_rgba(_textColor[0], _textColor[1], _textColor[2], Math.max(0.35, v.alpha * _textColor[3]));
        } else {
            mgraphics.set_source_rgba(_textColor[0], _textColor[1], _textColor[2], 0.25 * _textColor[3]);
        }

        // Voice index tag (01 - 32)
        var voiceTag = (i < 10 ? "0" + i : "" + i);
        var idMetrics = mgraphics.text_measure(voiceTag);
        mgraphics.move_to(x + 3, y + _fontSize + 1);
        mgraphics.show_text(voiceTag);

        // Soundfile name with line wrapping
        var nameX = x + idMetrics[0] + 6;
        var maxNameWidth = (x + cellW - 4) - nameX;
        var label = v.active ? v.name : "-";

        var lines = wrapText(label, maxNameWidth);
        var startY = y + _fontSize + 1;
        var lineSpacing = _fontSize * 1.05;

        // Render line 1 (or single full name)
        mgraphics.move_to(nameX, startY);
        mgraphics.show_text(lines[0] || "-");

        // Render line 2 if available and space permits
        if (lines.length > 1 && (cellH - _meterHeight) > (lineSpacing * 2.5)) {
            mgraphics.move_to(nameX, startY + lineSpacing);
            var l2 = lines[1];
            if (lines.length > 2) l2 += "..";
            mgraphics.show_text(l2);
        }

        // Right-aligned voice parameter telemetry
        if (v.active && v.alpha > 0.0 && cellH > (_fontSize * 2.2 + _meterHeight)) {
            var subFontSize = Math.max(6.0, _fontSize * 0.75);
            mgraphics.set_font_size(subFontSize);

            var pStart = v.pitchStart;
            var pEnd   = v.pitchEnd;
            var aStart = v.ampStartDb.toFixed(1);
            var aEnd   = v.ampEndDb.toFixed(1);

            var paramText = "vspd " + pStart + "…" + pEnd + " / amp " + aStart + "…" + aEnd;
            var textMetrics = mgraphics.text_measure(paramText);
            var rightPadding = 4;
            var textX = (x + cellW) - textMetrics[0] - rightPadding;
            var textY = y + cellH - _meterHeight - 3;

            textX = Math.max(x + 3, textX);

            mgraphics.move_to(textX, textY);
            mgraphics.show_text(paramText);
        }
    }
}