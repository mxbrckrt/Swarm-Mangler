/**
 * =============================================================================
 * @file        matrix_32x64.js
 * @description Static 16x16 Paged Routing Matrix for 32 Inputs x 64 Outputs.
 *              Custom designed for the Swarm-Mangler audio ecosystem.
 * @version     9.1.0
 * @author      Max Bruckert (2026)
 * @date        2026
 * =============================================================================
 *
 * ARCHITECTURE & SIGNAL FLOW:
 * ---------------------------
 * - Maximum capacity: 32 Source Inputs (Columns) x 64 Dante Outputs (Rows).
 * - Static Viewport: 16x16 grid at all times to eliminate UI thread jitter.
 * - Source Paging (Top Tabs):
 *     * Tab 0: SRC 1-16
 *     * Tab 1: SRC 17-32
 * - Destination Paging (Right Tabs):
 *     * Tab 0: OUT 1-16
 *     * Tab 1: OUT 17-32
 *     * Tab 2: OUT 33-48
 *     * Tab 3: OUT 49-64
 *
 * INLETS & MESSAGES (Inlet 0):
 * ----------------------------
 * - chans <int>       : Sets active source channels count. All sources > chans
 *                       are visually grayed out and strictly locked against clicks.
 * - page_in <int>     : Selects source page (0 = 1-16, 1 = 17-32).
 * - page_out <int>    : Selects destination page (0..3).
 * - clear             : Resets the entire 32x64 grid to 0 and notifies pattr.
 * - lock <0|1>        : Toggles or sets the matrix lock (1 = locked, 0 = unlocked).
 * - diagonal / diag   : Straight 1:1 patch (Inlet N -> Outlet N) up to the current
 *                       'chans' limit. Resets existing routings, assigns straight
 *                       points (0->0, 1->1, ...), immediately outputs to mcs.matrix~
 *                       and notifies pattr.
 * - <col> <row> <val> : Direct cell assignment (0-indexed absolute coordinates).
 * - dump / gettheme   : Prints current theme values to Max Console and outlet 1.
 *
 * ON-SCREEN BUTTONS:
 * ------------------
 * - [diagonal] : Button located to the left of [clear]. Patches straight 1:1 connections
 *                for all active channels defined by the last 'chans' message.
 * - [clear]    : Clears all active matrix routes.
 * - [lock]     : Button located to the right of [clear]. Toggles matrix lock to prevent
 *                accidental edits during live performance.
 *
 * OUTLETS:
 * --------
 * - Outlet 0 : Realtime routing commands sent to [mcs.matrix~ 32 64 @ramp 20]
 *              Format: "<col> <row> <state>" (0-indexed absolute) or "clear".
 * - Outlet 1 : Theme serialization dump / pattr client notifications.
 *
 * PATTR / PATTRSTORAGE INTEGRATION:
 * ---------------------------------
 * Implements native getvalueof() and setvalueof() handlers. The active patch
 * points are serialized as a flat list: [c1, r1, c2, r2, ...]. If the matrix
 * is empty, returns -1 to guarantee a valid atomic token.
 * =============================================================================
 */

inlets = 1;
outlets = 2;

setinletassist(0, "Messages: chans <int>, diagonal, clear, page_in <int>, page_out <int>, col row val, pattr, dump");
setoutletassist(0, "Matrix routing output to [mcs.matrix~ 32 64]");
setoutletassist(1, "Theme serialization / pattr notifications");

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// =============================================================================
// STYLE ATTRIBUTES (FULL GUI INSPECTOR EXPOSURE)
// =============================================================================
declareattribute("fontFamily", "get_font_family", "set_font_family", 1);
declareattribute("titleFontSize", "get_title_font_size", "set_title_font_size", 1);
declareattribute("axisFontSize", "get_axis_font_size", "set_axis_font_size", 1);
declareattribute("cellFontSize", "get_cell_font_size", "set_cell_font_size", 1);
declareattribute("tabsFontSize", "get_tabs_font_size", "set_tabs_font_size", 1);
declareattribute("clearFontSize", "get_clear_font_size", "set_clear_font_size", 1);

declareattribute("titleColor", "get_title_color", "set_title_color", 1);
declareattribute("axisColor", "get_axis_color", "set_axis_color", 1);
declareattribute("activeTextColor", "get_active_text_color", "set_active_text_color", 1);
declareattribute("sideTitleColor", "get_side_title_color", "set_side_title_color", 1);
declareattribute("tabsActiveTextColor", "get_tabs_active_text_color", "set_tabs_active_text_color", 1);
declareattribute("tabsInactiveTextColor", "get_tabs_inactive_text_color", "set_tabs_inactive_text_color", 1);
declareattribute("clearTextColor", "get_clear_text_color", "set_clear_text_color", 1);

declareattribute("bgColor", "get_bg_color", "set_bg_color", 1);
declareattribute("cellOffColor", "get_cell_off_color", "set_cell_off_color", 1);
declareattribute("cellBorderColor", "get_cell_border_color", "set_cell_border_color", 1);
declareattribute("cellActiveBgColor", "get_cell_active_bg_color", "set_cell_active_bg_color", 1);
declareattribute("cellActiveBorderColor", "get_cell_active_border_color", "set_cell_active_border_color", 1);
declareattribute("disabledCellColor", "get_disabled_cell_color", "set_disabled_cell_color", 1);

declareattribute("tabActiveBgColor", "get_tab_active_bg_color", "set_tab_active_bg_color", 1);
declareattribute("tabActiveBorderColor", "get_tab_active_border_color", "set_tab_active_border_color", 1);
declareattribute("tabInactiveBgColor", "get_tab_inactive_bg_color", "set_tab_inactive_bg_color", 1);
declareattribute("tabInactiveBorderColor", "get_tab_inactive_border_color", "set_tab_inactive_border_color", 1);
declareattribute("clearBtnBgColor", "get_clear_btn_bg_color", "set_clear_btn_bg_color", 1);
declareattribute("clearBtnBorderColor", "get_clear_btn_border_color", "set_clear_btn_border_color", 1);

declareattribute("padding", "get_padding", "set_padding", 1);
declareattribute("cellRadius", "get_cell_radius", "set_cell_radius", 1);
declareattribute("borderWidth", "get_border_width", "set_border_width", 1);

// ----------------------------- DEFAULT THEME VALUES -----------------------------
var _fontFamily              = "Lato";
var _titleFontSize           = 20.0;
var _axisFontSize            = 16.0;
var _cellFontSize            = 14.0;
var _tabsFontSize            = 12.0;
var _clearFontSize           = 14.0;

var _titleColor              = [0.666544, 0.646787, 0.000278, 1.0];
var _axisColor               = [0.4, 0.4, 0.4, 1.0];
var _activeTextColor         = [1.0, 1.0, 1.0, 1.0];
var _sideTitleColor          = [0.666544, 0.646787, 0.000278, 1.0];
var _tabsActiveTextColor     = [1.0, 1.0, 1.0, 1.0];
var _tabsInactiveTextColor   = [0.4, 0.4, 0.4, 1.0];
var _clearTextColor          = [1.0, 1.0, 1.0, 1.0];

var _bgColor                 = [0.07843, 0.07843, 0.07843, 1.0];
var _cellOffColor            = [0.07843, 0.07843, 0.07843, 1.0];
var _cellBorderColor         = [0.219604, 0.219604, 0.219604, 1.0];
var _cellActiveBgColor       = [0.0, 0.395952, 0.392072, 0.5];
var _cellActiveBorderColor   = [0.000044, 1.0, 0.984291, 0.4];
var _disabledCellColor       = [0.219604, 0.219604, 0.219604, 0.3];

var _tabActiveBgColor        = [0.0, 0.395952, 0.392072, 1.0];
var _tabActiveBorderColor    = [0.000044, 1.0, 0.984291, 1.0];
var _tabInactiveBgColor      = [0.07843, 0.07843, 0.07843, 1.0];
var _tabInactiveBorderColor  = [0.4, 0.4, 0.4, 1.0];
var _clearBtnBgColor         = [0.219604, 0.219604, 0.219604, 0.0];
var _clearBtnBorderColor     = [0.000044, 1.0, 0.984291, 1.0];

var _padding                 = 2.0;
var _cellRadius              = 1.5;
var _borderWidth             = 1.0;

// Setters / Getters
function set_font_family(s)                 { _fontFamily = String(s); mgraphics.redraw(); }
function get_font_family()                  { return _fontFamily; }
function set_title_font_size(v)             { _titleFontSize = Math.max(6.0, Number(v)); mgraphics.redraw(); }
function get_title_font_size()              { return _titleFontSize; }
function set_axis_font_size(v)              { _axisFontSize = Math.max(5.0, Number(v)); mgraphics.redraw(); }
function get_axis_font_size()               { return _axisFontSize; }
function set_cell_font_size(v)              { _cellFontSize = Math.max(4.0, Number(v)); mgraphics.redraw(); }
function get_cell_font_size()               { return _cellFontSize; }
function set_tabs_font_size(v)              { _tabsFontSize = Math.max(5.0, Number(v)); mgraphics.redraw(); }
function get_tabs_font_size()               { return _tabsFontSize; }
function set_clear_font_size(v)             { _clearFontSize = Math.max(5.0, Number(v)); mgraphics.redraw(); }
function get_clear_font_size()              { return _clearFontSize; }

function set_title_color()                  { _titleColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_title_color()                  { return _titleColor; }
function set_axis_color()                   { _axisColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_axis_color()                   { return _axisColor; }
function set_active_text_color()            { _activeTextColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_active_text_color()            { return _activeTextColor; }
function set_side_title_color()             { _sideTitleColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_side_title_color()             { return _sideTitleColor; }
function set_tabs_active_text_color()       { _tabsActiveTextColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tabs_active_text_color()       { return _tabsActiveTextColor; }
function set_tabs_inactive_text_color()     { _tabsInactiveTextColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tabs_inactive_text_color()     { return _tabsInactiveTextColor; }
function set_clear_text_color()             { _clearTextColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_clear_text_color()             { return _clearTextColor; }

function set_bg_color()                     { _bgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_bg_color()                     { return _bgColor; }
function set_cell_off_color()               { _cellOffColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_cell_off_color()               { return _cellOffColor; }
function set_cell_border_color()            { _cellBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_cell_border_color()            { return _cellBorderColor; }
function set_cell_active_bg_color()         { _cellActiveBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_cell_active_bg_color()         { return _cellActiveBgColor; }
function set_cell_active_border_color()     { _cellActiveBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_cell_active_border_color()     { return _cellActiveBorderColor; }
function set_disabled_cell_color()          { _disabledCellColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_disabled_cell_color()          { return _disabledCellColor; }

function set_tab_active_bg_color()          { _tabActiveBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tab_active_bg_color()          { return _tabActiveBgColor; }
function set_tab_active_border_color()      { _tabActiveBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tab_active_border_color()      { return _tabActiveBorderColor; }
function set_tab_inactive_bg_color()        { _tabInactiveBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tab_inactive_bg_color()        { return _tabInactiveBgColor; }
function set_tab_inactive_border_color()    { _tabInactiveBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_tab_inactive_border_color()    { return _tabInactiveBorderColor; }
function set_clear_btn_bg_color()           { _clearBtnBgColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_clear_btn_bg_color()           { return _clearBtnBgColor; }
function set_clear_btn_border_color()       { _clearBtnBorderColor = arrayfromargs(arguments); mgraphics.redraw(); }
function get_clear_btn_border_color()       { return _clearBtnBorderColor; }

function set_padding(v)                     { _padding = Math.max(0.5, Number(v)); mgraphics.redraw(); }
function get_padding()                      { return _padding; }
function set_cell_radius(v)                 { _cellRadius = Math.max(0.0, Number(v)); mgraphics.redraw(); }
function get_cell_radius()                  { return _cellRadius; }
function set_border_width(v)                { _borderWidth = Math.max(0.1, Number(v)); mgraphics.redraw(); }
function get_border_width()                 { return _borderWidth; }

// =============================================================================
// THEME DUMP / SERIALIZATION TO CONSOLE & OUTLET 1
// =============================================================================
function dump() {
    gettheme();
}

function gettheme() {
    post("\n=== [matrix_paged_32x64.jsui] FULL THEME CONFIGURATION DUMP ===\n");
    post("@fontFamily               : " + _fontFamily + "\n");
    post("@titleFontSize            : " + _titleFontSize + "\n");
    post("@axisFontSize             : " + _axisFontSize + "\n");
    post("@cellFontSize             : " + _cellFontSize + "\n");
    post("@tabsFontSize             : " + _tabsFontSize + "\n");
    post("@clearFontSize            : " + _clearFontSize + "\n");
    post("@titleColor               : " + _titleColor.join(" ") + "\n");
    post("@axisColor                : " + _axisColor.join(" ") + "\n");
    post("@activeTextColor          : " + _activeTextColor.join(" ") + "\n");
    post("@sideTitleColor           : " + _sideTitleColor.join(" ") + "\n");
    post("@tabsActiveTextColor      : " + _tabsActiveTextColor.join(" ") + "\n");
    post("@tabsInactiveTextColor    : " + _tabsInactiveTextColor.join(" ") + "\n");
    post("@clearTextColor           : " + _clearTextColor.join(" ") + "\n");
    post("@bgColor                  : " + _bgColor.join(" ") + "\n");
    post("@cellOffColor             : " + _cellOffColor.join(" ") + "\n");
    post("@cellBorderColor          : " + _cellBorderColor.join(" ") + "\n");
    post("@cellActiveBgColor        : " + _cellActiveBgColor.join(" ") + "\n");
    post("@cellActiveBorderColor    : " + _cellActiveBorderColor.join(" ") + "\n");
    post("@disabledCellColor        : " + _disabledCellColor.join(" ") + "\n");
    post("@tabActiveBgColor         : " + _tabActiveBgColor.join(" ") + "\n");
    post("@tabActiveBorderColor     : " + _tabActiveBorderColor.join(" ") + "\n");
    post("@tabInactiveBgColor       : " + _tabInactiveBgColor.join(" ") + "\n");
    post("@tabInactiveBorderColor   : " + _tabInactiveBorderColor.join(" ") + "\n");
    post("@clearBtnBgColor          : " + _clearBtnBgColor.join(" ") + "\n");
    post("@clearBtnBorderColor      : " + _clearBtnBorderColor.join(" ") + "\n");
    post("@padding                  : " + _padding + "\n");
    post("@cellRadius               : " + _cellRadius + "\n");
    post("@borderWidth              : " + _borderWidth + "\n");
    post("=================================================================\n");

    outlet(1, ["fontFamily", _fontFamily]);
    outlet(1, ["titleFontSize", _titleFontSize]);
    outlet(1, ["axisFontSize", _axisFontSize]);
    outlet(1, ["cellFontSize", _cellFontSize]);
    outlet(1, ["tabsFontSize", _tabsFontSize]);
    outlet(1, ["clearFontSize", _clearFontSize]);
    outlet(1, ["titleColor"].concat(_titleColor));
    outlet(1, ["axisColor"].concat(_axisColor));
    outlet(1, ["activeTextColor"].concat(_activeTextColor));
    outlet(1, ["sideTitleColor"].concat(_sideTitleColor));
    outlet(1, ["tabsActiveTextColor"].concat(_tabsActiveTextColor));
    outlet(1, ["tabsInactiveTextColor"].concat(_tabsInactiveTextColor));
    outlet(1, ["clearTextColor"].concat(_clearTextColor));
    outlet(1, ["bgColor"].concat(_bgColor));
    outlet(1, ["cellOffColor"].concat(_cellOffColor));
    outlet(1, ["cellBorderColor"].concat(_cellBorderColor));
    outlet(1, ["cellActiveBgColor"].concat(_cellActiveBgColor));
    outlet(1, ["cellActiveBorderColor"].concat(_cellActiveBorderColor));
    outlet(1, ["disabledCellColor"].concat(_disabledCellColor));
    outlet(1, ["tabActiveBgColor"].concat(_tabActiveBgColor));
    outlet(1, ["tabActiveBorderColor"].concat(_tabActiveBorderColor));
    outlet(1, ["tabInactiveBgColor"].concat(_tabInactiveBgColor));
    outlet(1, ["tabInactiveBorderColor"].concat(_tabInactiveBorderColor));
    outlet(1, ["clearBtnBgColor"].concat(_clearBtnBgColor));
    outlet(1, ["clearBtnBorderColor"].concat(_clearBtnBorderColor));
    outlet(1, ["padding", _padding]);
    outlet(1, ["cellRadius", _cellRadius]);
    outlet(1, ["borderWidth", _borderWidth]);
}

// =============================================================================
// FIXED ARCHITECTURE: 32 IN x 64 OUT (STATIC 16x16 VIEWPORT)
// =============================================================================
var TOTAL_COLS = 32;
var TOTAL_ROWS = 64;
var PAGE_SIZE  = 16;

var inPage         = 0;  // 0 = SRC 1-16, 1 = SRC 17-32
var outPage        = 0;  // 0 = OUT 1-16, 1 = OUT 17-32, 2 = OUT 33-48, 3 = OUT 49-64
var allowedSources = 6;  // Dynamic lock set via chans $1

var grid = [];

function initGrid() {
    grid = [];
    for (var c = 0; c < TOTAL_COLS; c++) {
        var colArr = [];
        for (var r = 0; r < TOTAL_ROWS; r++) {
            colArr.push(0);
        }
        grid.push(colArr);
    }
}
initGrid();

function chans(n) {
    allowedSources = Math.max(1, Math.min(TOTAL_COLS, parseInt(n, 10)));
    mgraphics.redraw();
}

function page_in(p) {
    inPage = Math.max(0, Math.min(1, parseInt(p, 10)));
    mgraphics.redraw();
}

function page_out(p) {
    outPage = Math.max(0, Math.min(3, parseInt(p, 10)));
    mgraphics.redraw();
}

// =============================================================================
// DIAGONAL ROUTING FUNCTION (1=1, 2=2, ... up to allowedSources)
// =============================================================================
function diagonal() {
    initGrid();
    outlet(0, "clear");

    var limit = Math.min(allowedSources, TOTAL_ROWS);
    for (var i = 0; i < limit; i++) {
        grid[i][i] = 1;
        outlet(0, i, i, 1);
    }

    notifyclients();
    mgraphics.redraw();
}

function diag() {
    diagonal();
}

// =============================================================================
// OFFICIAL PATTR / PATTRSTORAGE PROTOCOL (getvalueof & setvalueof)
// =============================================================================
function getvalueof() {
    var activeList = [];
    for (var c = 0; c < TOTAL_COLS; c++) {
        for (var r = 0; r < TOTAL_ROWS; r++) {
            if (grid[c][r] === 1) {
                activeList.push(c);
                activeList.push(r);
            }
        }
    }
    if (activeList.length === 0) {
        return -1;
    }
    return activeList;
}

function setvalueof() {
    var a = arrayfromargs(arguments);
    initGrid();

    // Handle nested arrays depending on pattr context
    if (a.length === 1 && Array.isArray(a[0])) {
        a = a[0];
    }

    // 1. Reset connected DSP matrix
    outlet(0, "clear");

    // 2. Restore and immediately emit active connections to [mcs.matrix~]
    if (a.length >= 2 && a[0] !== -1) {
        for (var i = 0; i < a.length; i += 2) {
            var c = parseInt(a[i], 10);
            var r = parseInt(a[i + 1], 10);
            if (c >= 0 && c < TOTAL_COLS && r >= 0 && r < TOTAL_ROWS) {
                grid[c][r] = 1;
                outlet(0, c, r, 1);
            }
        }
    }
    mgraphics.redraw();
}

declareattribute("value", "getvalueof", "setvalueof", 0);

function dump_matrix() {
    outlet(0, "clear");
    for (var c = 0; c < TOTAL_COLS; c++) {
        for (var r = 0; r < TOTAL_ROWS; r++) {
            if (grid[c][r] === 1) {
                outlet(0, c, r, 1);
            }
        }
    }
}

function clear() {
    initGrid();
    notifyclients();
    mgraphics.redraw();
    outlet(0, "clear");
}

function lock(v) {
    if (arguments.length === 0) {
        isMatrixLocked = !isMatrixLocked;
    } else {
        isMatrixLocked = (parseInt(v, 10) > 0);
    }
    mgraphics.redraw();
}

function list() {
    var a = arrayfromargs(arguments);
    if (a.length === 3) {
        var c = parseInt(a[0], 10);
        var r = parseInt(a[1], 10);
        var val = parseInt(a[2], 10) ? 1 : 0;
        if (c >= 0 && c < TOTAL_COLS && r >= 0 && r < TOTAL_ROWS) {
            grid[c][r] = val;
            notifyclients();
            mgraphics.redraw();
            outlet(0, c, r, val);
        }
    } else if (a.length >= 1) {
        setvalueof.apply(this, a);
    }
}

// =============================================================================
// GEOMETRY & MOUSE INTERACTION
// =============================================================================
var inTabsRects   = [];
var outTabsRects  = [];
var clearBtnRect  = [0, 0, 0, 0];
var lockBtnRect   = [0, 0, 0, 0];
var diagBtnRect   = [0, 0, 0, 0];
var isMatrixLocked = false;
var hoverCol      = -1;
var hoverRow      = -1;

function getLayout() {
    var width  = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];

    var headerRowH   = Math.max(_titleFontSize * 1.5, _tabsFontSize * 1.8);
    var topMargin    = headerRowH + _axisFontSize * 1.8;
    var leftMargin   = _titleFontSize * 1.2;

    var tabWidth     = 74;
    var rightMargin  = _axisFontSize * 2.8 + tabWidth + (_titleFontSize * 2.2);
    var bottomMargin = _axisFontSize * 1.5;

    var gridW = width - leftMargin - rightMargin;
    var gridH = height - topMargin - bottomMargin;

    var step = Math.min(
        (gridW - (PAGE_SIZE - 1) * _padding) / PAGE_SIZE,
        (gridH - (PAGE_SIZE - 1) * _padding) / PAGE_SIZE
    );
    step = Math.max(step, 6.0);

    return {
        width: width,
        height: height,
        headerRowH: headerRowH,
        topMargin: topMargin,
        leftMargin: leftMargin,
        step: step,
        tabWidth: tabWidth,
        gridW: PAGE_SIZE * step + (PAGE_SIZE - 1) * _padding,
        gridH: PAGE_SIZE * step + (PAGE_SIZE - 1) * _padding
    };
}

function onclick(px, py, but, cmd, shift, capslock, fn, ctrl) {
    // 0. Lock button click test (always accessible to toggle lock state)
    if (px >= lockBtnRect[0] && px <= lockBtnRect[2] &&
        py >= lockBtnRect[1] && py <= lockBtnRect[3]) {
        isMatrixLocked = !isMatrixLocked;
        mgraphics.redraw();
        return;
    }

    // 1. Diagonal button click test
    if (px >= diagBtnRect[0] && px <= diagBtnRect[2] &&
        py >= diagBtnRect[1] && py <= diagBtnRect[3]) {
        if (!isMatrixLocked) diagonal();
        return;
    }

    // 2. Clear button click test
    if (px >= clearBtnRect[0] && px <= clearBtnRect[2] &&
        py >= clearBtnRect[1] && py <= clearBtnRect[3]) {
        if (!isMatrixLocked) clear();
        return;
    }

    // 3. Source input tabs click test (always allowed to inspect pages)
    for (var i = 0; i < inTabsRects.length; i++) {
        var itr = inTabsRects[i];
        if (px >= itr.x1 && px <= itr.x2 && py >= itr.y1 && py <= itr.y2) {
            inPage = i;
            mgraphics.redraw();
            return;
        }
    }

    // 4. Destination output tabs click test (always allowed to inspect pages)
    for (var o = 0; o < outTabsRects.length; o++) {
        var otr = outTabsRects[o];
        if (px >= otr.x1 && px <= otr.x2 && py >= otr.y1 && py <= otr.y2) {
            outPage = o;
            mgraphics.redraw();
            return;
        }
    }

    // 5. Static 16x16 grid cell click (strictly blocked when locked)
    if (isMatrixLocked) return;

    var lay = getLayout();
    var relX = px - lay.leftMargin;
    var relY = py - lay.topMargin;

    if (relX >= 0 && relY >= 0) {
        var stride = lay.step + _padding;
        var cInPage = Math.floor(relX / stride);
        var rInPage = Math.floor(relY / stride);

        if (cInPage >= 0 && cInPage < PAGE_SIZE && rInPage >= 0 && rInPage < PAGE_SIZE) {
            var absoluteCol = (inPage * PAGE_SIZE) + cInPage;
            var absoluteRow = (outPage * PAGE_SIZE) + rInPage;

            // Strict invalidation if column >= allowedSources
            if (absoluteCol >= allowedSources) return;

            grid[absoluteCol][absoluteRow] = grid[absoluteCol][absoluteRow] ? 0 : 1;
            notifyclients();
            mgraphics.redraw();
            outlet(0, absoluteCol, absoluteRow, grid[absoluteCol][absoluteRow]);
        }
    }
}

function onidle(px, py) {
    var lay = getLayout();
    var relX = px - lay.leftMargin;
    var relY = py - lay.topMargin;
    var stride = lay.step + _padding;

    if (relX >= 0 && relY >= 0) {
        var cInPage = Math.floor(relX / stride);
        var rInPage = Math.floor(relY / stride);
        if (cInPage >= 0 && cInPage < PAGE_SIZE && rInPage >= 0 && rInPage < PAGE_SIZE) {
            if (hoverCol !== cInPage || hoverRow !== rInPage) {
                hoverCol = cInPage;
                hoverRow = rInPage;
                mgraphics.redraw();
            }
            return;
        }
    }
    if (hoverCol !== -1 || hoverRow !== -1) {
        hoverCol = -1;
        hoverRow = -1;
        mgraphics.redraw();
    }
}

function onidleout() {
    hoverCol = -1;
    hoverRow = -1;
    mgraphics.redraw();
}

// =============================================================================
// VISUAL RENDERING (MGRAPHICS)
// =============================================================================
function paint() {
    var lay = getLayout();
    var width = lay.width;
    var height = lay.height;
    var stride = lay.step + _padding;
    var gridTotalW = lay.leftMargin + lay.gridW;
    var gridTotalH = lay.gridH;

    // 1. Background fill
    mgraphics.set_source_rgba(_bgColor);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    mgraphics.select_font_face(_fontFamily);

    // 2. Main title text
    mgraphics.set_font_size(_titleFontSize);
    mgraphics.set_source_rgba(_titleColor);
    var titleY = _titleFontSize * 1.35;
    mgraphics.move_to(lay.leftMargin, titleY);
    var titleText = "INPUTS (" + allowedSources + " CHANS)";
    mgraphics.show_text(titleText);
    var tmTitle = mgraphics.text_measure(titleText);

    // 3. Clear button
    var btnW = 44;
    var btnH = _clearFontSize * 1.8;
    var clearBtnX = gridTotalW - btnW;
    var btnY = titleY - btnH + 2;
    clearBtnRect = [clearBtnX, btnY, clearBtnX + btnW, btnY + btnH];

    if (_clearBtnBgColor[3] > 0.0) {
        mgraphics.set_source_rgba(_clearBtnBgColor);
        mgraphics.rectangle_rounded(clearBtnX, btnY, btnW, btnH, _cellRadius, _cellRadius);
        mgraphics.fill();
    }

    mgraphics.set_source_rgba(_clearBtnBorderColor);
    mgraphics.set_line_width(_borderWidth);
    mgraphics.rectangle_rounded(clearBtnX, btnY, btnW, btnH, _cellRadius, _cellRadius);
    mgraphics.stroke();

    mgraphics.set_source_rgba(_clearTextColor);
    mgraphics.set_font_size(_clearFontSize);
    var tmClear = mgraphics.text_measure("clear");
    mgraphics.move_to(clearBtnX + (btnW - tmClear[0]) * 0.5, btnY + (btnH + tmClear[1] * 0.6) * 0.5);
    mgraphics.show_text("clear");

    // 3b. Lock button (Placed immediately to the right of [clear])
    var lockBtnW = 44;
    var lockBtnSpacing = 6;
    var lockBtnX = clearBtnX + btnW + lockBtnSpacing;
    lockBtnRect = [lockBtnX, btnY, lockBtnX + lockBtnW, btnY + btnH];

    if (isMatrixLocked) {
        mgraphics.set_source_rgba(_tabActiveBgColor);
        mgraphics.rectangle_rounded(lockBtnX, btnY, lockBtnW, btnH, _cellRadius, _cellRadius);
        mgraphics.fill();
        mgraphics.set_source_rgba(_tabActiveBorderColor);
    } else {
        if (_clearBtnBgColor[3] > 0.0) {
            mgraphics.set_source_rgba(_clearBtnBgColor);
            mgraphics.rectangle_rounded(lockBtnX, btnY, lockBtnW, btnH, _cellRadius, _cellRadius);
            mgraphics.fill();
        }
        mgraphics.set_source_rgba(_clearBtnBorderColor);
    }
    mgraphics.set_line_width(_borderWidth);
    mgraphics.rectangle_rounded(lockBtnX, btnY, lockBtnW, btnH, _cellRadius, _cellRadius);
    mgraphics.stroke();

    mgraphics.set_source_rgba(isMatrixLocked ? [0.0, 1.0, 0.98, 1.0] : _clearTextColor);
    mgraphics.set_font_size(_clearFontSize);
    var tmLock = mgraphics.text_measure("lock");
    mgraphics.move_to(lockBtnX + (lockBtnW - tmLock[0]) * 0.5, btnY + (btnH + tmLock[1] * 0.6) * 0.5);
    mgraphics.show_text("lock");

    // 4. Diagonal button (Placed immediately to the left of [clear] with identical styling)
    var diagBtnW = 62;
    var diagBtnSpacing = 6;
    var diagBtnX = clearBtnX - diagBtnW - diagBtnSpacing;
    diagBtnRect = [diagBtnX, btnY, diagBtnX + diagBtnW, btnY + btnH];

    if (_clearBtnBgColor[3] > 0.0) {
        mgraphics.set_source_rgba(_clearBtnBgColor);
        mgraphics.rectangle_rounded(diagBtnX, btnY, diagBtnW, btnH, _cellRadius, _cellRadius);
        mgraphics.fill();
    }

    mgraphics.set_source_rgba(_clearBtnBorderColor);
    mgraphics.set_line_width(_borderWidth);
    mgraphics.rectangle_rounded(diagBtnX, btnY, diagBtnW, btnH, _cellRadius, _cellRadius);
    mgraphics.stroke();

    mgraphics.set_source_rgba(_clearTextColor);
    mgraphics.set_font_size(_clearFontSize);
    var tmDiag = mgraphics.text_measure("diagonal");
    mgraphics.move_to(diagBtnX + (diagBtnW - tmDiag[0]) * 0.5, btnY + (btnH + tmDiag[1] * 0.6) * 0.5);
    mgraphics.show_text("diagonal");

    // 5. Input tabs (Sources)
    inTabsRects = [];
    var inTabW = 80;
    var inTabH = _tabsFontSize * 1.8;
    var inTabStartX = lay.leftMargin + tmTitle[0] + 16;
    var inTabY = titleY - inTabH + 2;

    for (var i = 0; i < 2; i++) {
        var itx = inTabStartX + i * (inTabW + 4);
        var isCurrentIn = (i === inPage);
        inTabsRects.push({ x1: itx, y1: inTabY, x2: itx + inTabW, y2: inTabY + inTabH });

        mgraphics.set_source_rgba(isCurrentIn ? _tabActiveBgColor : _tabInactiveBgColor);
        mgraphics.rectangle_rounded(itx, inTabY, inTabW, inTabH, _cellRadius, _cellRadius);
        mgraphics.fill();

        mgraphics.set_source_rgba(isCurrentIn ? _tabActiveBorderColor : _tabInactiveBorderColor);
        mgraphics.set_line_width(isCurrentIn ? _borderWidth * 1.5 : _borderWidth);
        mgraphics.rectangle_rounded(itx, inTabY, inTabW, inTabH, _cellRadius, _cellRadius);
        mgraphics.stroke();

        mgraphics.set_source_rgba(isCurrentIn ? _tabsActiveTextColor : _tabsInactiveTextColor);
        mgraphics.set_font_size(_tabsFontSize);
        var inLabel = (i === 0) ? "SRC 1-16" : "SRC 17-32";
        var tmIn = mgraphics.text_measure(inLabel);
        mgraphics.move_to(itx + (inTabW - tmIn[0]) * 0.5, inTabY + (inTabH + tmIn[1] * 0.6) * 0.5);
        mgraphics.show_text(inLabel);
    }

    // 6. Source column axis numbering (1..16)
    mgraphics.set_font_size(_axisFontSize);
    for (var c = 0; c < PAGE_SIZE; c++) {
        var absoluteCol = (inPage * PAGE_SIZE) + c;
        var numStr = "" + (absoluteCol + 1);
        var tm = mgraphics.text_measure(numStr);
        var x = lay.leftMargin + c * stride;

        var isLocked = (absoluteCol >= allowedSources);
        if (isLocked) {
            mgraphics.set_source_rgba(_disabledCellColor);
        } else if (c === hoverCol) {
            mgraphics.set_source_rgba(_cellActiveBorderColor);
        } else {
            mgraphics.set_source_rgba(_axisColor);
        }
        mgraphics.move_to(x + (lay.step - tm[0]) * 0.5, lay.topMargin - 5);
        mgraphics.show_text(numStr);
    }

    // 7. Static 16x16 grid rendering
    mgraphics.set_font_size(_cellFontSize);

    for (var c = 0; c < PAGE_SIZE; c++) {
        var x = lay.leftMargin + c * stride;
        var absoluteCol = (inPage * PAGE_SIZE) + c;
        var isLocked = (absoluteCol >= allowedSources);

        for (var r = 0; r < PAGE_SIZE; r++) {
            var y = lay.topMargin + r * stride;
            var absoluteRow = (outPage * PAGE_SIZE) + r;
            var isOn = grid[absoluteCol][absoluteRow] === 1;
            var isHover = (c === hoverCol || r === hoverRow) && !isLocked;

            if (isLocked) {
                mgraphics.set_source_rgba(_disabledCellColor);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.fill();

                mgraphics.set_source_rgba(_cellBorderColor[0], _cellBorderColor[1], _cellBorderColor[2], 0.15);
                mgraphics.set_line_width(_borderWidth);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.stroke();

            } else if (isOn) {
                mgraphics.set_source_rgba(_cellActiveBgColor);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.fill();

                mgraphics.set_source_rgba(_cellActiveBorderColor);
                mgraphics.set_line_width(_borderWidth * 1.5);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.stroke();

                mgraphics.set_source_rgba(_activeTextColor);
                var tag = (absoluteCol + 1) + "➔" + (absoluteRow + 1);
                var tmCell = mgraphics.text_measure(tag);
                mgraphics.move_to(
                    x + (lay.step - tmCell[0]) * 0.5,
                    y + (lay.step + tmCell[1] * 0.6) * 0.5
                );
                mgraphics.show_text(tag);

            } else {
                mgraphics.set_source_rgba(isHover ? [0.12, 0.12, 0.13, 1.0] : _cellOffColor);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.fill();

                mgraphics.set_source_rgba(isHover ? _cellActiveBorderColor : _cellBorderColor);
                mgraphics.set_line_width(_borderWidth);
                mgraphics.rectangle_rounded(x, y, lay.step, lay.step, _cellRadius, _cellRadius);
                mgraphics.stroke();
            }

            if (c === (PAGE_SIZE - 1)) {
                mgraphics.set_source_rgba((r === hoverRow) ? _cellActiveBorderColor : _axisColor);
                mgraphics.set_font_size(_axisFontSize);
                var outNum = "" + (absoluteRow + 1);
                mgraphics.move_to(x + lay.step + 6, y + (lay.step + _axisFontSize * 0.6) * 0.5);
                mgraphics.show_text(outNum);
            }
        }
    }

    // 8. Output tabs on the right (Destinations)
    outTabsRects = [];
    var tabX = gridTotalW + _axisFontSize * 2.8 + 8;
    var singleTabH = (gridTotalH - 3 * 3) / 4;

    for (var o = 0; o < 4; o++) {
        var ty = lay.topMargin + o * (singleTabH + 3);
        var isCurrentOut = (o === outPage);
        outTabsRects.push({ x1: tabX, y1: ty, x2: tabX + lay.tabWidth, y2: ty + singleTabH });

        mgraphics.set_source_rgba(isCurrentOut ? _tabActiveBgColor : _tabInactiveBgColor);
        mgraphics.rectangle_rounded(tabX, ty, lay.tabWidth, singleTabH, _cellRadius, _cellRadius);
        mgraphics.fill();

        mgraphics.set_source_rgba(isCurrentOut ? _tabActiveBorderColor : _tabInactiveBorderColor);
        mgraphics.set_line_width(isCurrentOut ? _borderWidth * 1.5 : _borderWidth);
        mgraphics.rectangle_rounded(tabX, ty, lay.tabWidth, singleTabH, _cellRadius, _cellRadius);
        mgraphics.stroke();

        mgraphics.set_source_rgba(isCurrentOut ? _tabsActiveTextColor : _tabsInactiveTextColor);
        mgraphics.set_font_size(_tabsFontSize);
        var startR = o * PAGE_SIZE + 1;
        var endR = (o + 1) * PAGE_SIZE;
        var tabLabel = "OUT " + startR + "-" + endR;
        var tmTab = mgraphics.text_measure(tabLabel);
        mgraphics.move_to(tabX + (lay.tabWidth - tmTab[0]) * 0.5, ty + (singleTabH + tmTab[1] * 0.6) * 0.5);
        mgraphics.show_text(tabLabel);
    }

    // 9. Vertical destination title ("OUTPUTS (1-64)")
    var sideTitleX = tabX + lay.tabWidth + _titleFontSize * 1.5;
    var gridCenterY = lay.topMargin + gridTotalH * 0.5;

    mgraphics.set_font_size(_titleFontSize);
    mgraphics.set_source_rgba(_sideTitleColor);

    mgraphics.save();
    mgraphics.translate(sideTitleX, gridCenterY);
    mgraphics.rotate(-Math.PI * 0.5);
    var tmSide = mgraphics.text_measure("OUTPUTS (1-64)");
    mgraphics.move_to(-tmSide[0] * 0.5, _titleFontSize * 0.35);
    mgraphics.show_text("OUTPUTS (1-64)");
    mgraphics.restore();
}