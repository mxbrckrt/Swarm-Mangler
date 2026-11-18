/**
 * =============================================================================
 * @file dbap_csv_loader.js
 * @project GEN-patches / Swarm-Mangler 3D Spatial Ecosystem
 * @description Dynamic CSV speaker layout parser & buffer updater for Max/MSP.
 *              Fills 3-channel buffer~ 'spk_pos' (Ch1: X, Ch2: Y, Ch3: Z)
 *              with ear-level centered coordinates (ADM Standard Z=0 at ear level).
 *              Broadcasts layout telemetry to WebSocket Three.js viewer.
 * @author Max Bruckert (assisted by Gemini)
 * =============================================================================
 * 
 * Inlets:
 *   0: Messages:
 *      - read <filename> : loads CSV layout
 *      - preset <name>   : loads 'maxBstudio' or 'gramestudio' preset
 *      - ear_height <m>  : sets listener ear height in meters (or 'auto')
 * 
 * Outlets:
 *   0: To gen~ (num_speakers <count>, room_scale <meters>)
 *   1: UI Info / Names (speakers <count> [name1, name2, ...])
 *   2: To Visualizer (s -to-visualizer- -> max_bridge.js -> WebSocket Three.js)
 *      - /spk/clear
 *      - /spk/layout <filename> <count> <ear_height> <room_radius>
 *      - /spk/add <id> <name> <x> <y> <z_centered> <z_raw>
 *      - /spk/done <count>
 * =============================================================================
 */

autowatch = 1;
inlets = 1;
outlets = 3;

var bufferName = "spk_pos";
var earHeightSetting = "auto"; // "auto" or numerical value in meters

function ear_height(val) {
    if (typeof val === "string" && val.toLowerCase() === "auto") {
        earHeightSetting = "auto";
        post("[dbap_csv_loader] Ear height set to: AUTO\n");
    } else {
        var num = parseFloat(val);
        if (!isNaN(num)) {
            earHeightSetting = num;
            post("[dbap_csv_loader] Ear height manually set to: " + num + " meters\n");
        }
    }
}

function findFile(filename) {
    if (!filename) return null;
    
    // Strategy 1: Direct file open
    var f = new File(filename, "read");
    if (f && f.isopen) return f;
    
    // Extract bare filename (strip any path prefixes)
    var bareName = filename;
    var lastSlash = filename.lastIndexOf("/");
    if (lastSlash !== -1) {
        bareName = filename.substring(lastSlash + 1);
        f = new File(bareName, "read");
        if (f && f.isopen) return f;
    }
    
    // Strategy 2: Resolve relative to patcher directory
    if (this.patcher && this.patcher.filepath) {
        var pPath = this.patcher.filepath;
        var pSlash = pPath.lastIndexOf("/");
        if (pSlash !== -1) {
            var pDir = pPath.substring(0, pSlash + 1);
            
            // Try pDir + filename
            f = new File(pDir + filename, "read");
            if (f && f.isopen) return f;
            
            // Try pDir + "layouts/" + bareName
            f = new File(pDir + "layouts/" + bareName, "read");
            if (f && f.isopen) return f;
            
            // Try pDir + bareName
            f = new File(pDir + bareName, "read");
            if (f && f.isopen) return f;
        }
    }
    
    // Strategy 3: Try "layouts/" + bareName
    f = new File("layouts/" + bareName, "read");
    if (f && f.isopen) return f;
    
    return null;
}

function detectEarHeight(speakers) {
    if (!speakers || speakers.length === 0) return 0.0;
    
    var minZ = Infinity;
    var maxZ = -Infinity;
    var zList = [];
    
    for (var i = 0; i < speakers.length; i++) {
        var z = speakers[i].z_raw;
        if (z < minZ) minZ = z;
        if (z > maxZ) maxZ = z;
        zList.push(z);
    }
    
    // If coordinates already have negative Z (e.g. sub at -0.5, ceiling at +2.0),
    // they are already centered around ear level (ADM convention).
    if (minZ < -0.05) {
        return 0.0;
    }
    
    // If manual override was provided
    if (typeof earHeightSetting === "number") {
        return earHeightSetting;
    }
    
    // Auto-detection: count speaker occurrences in standard seated/standing range (0.5m .. 1.5m)
    var counts = {};
    var bestZ = null;
    var maxCount = 0;
    
    for (var j = 0; j < zList.length; j++) {
        var val = zList[j];
        if (val >= 0.5 && val <= 1.5) {
            var key = val.toFixed(2);
            counts[key] = (counts[key] || 0) + 1;
            if (counts[key] > maxCount) {
                maxCount = counts[key];
                bestZ = parseFloat(key);
            }
        }
    }
    
    if (bestZ !== null) {
        return bestZ;
    }
    
    // Fallback: median Z
    zList.sort(function(a, b) { return a - b; });
    var mid = Math.floor(zList.length / 2);
    return zList.length % 2 !== 0 ? zList[mid] : (zList[mid - 1] + zList[mid]) / 2.0;
}

function read(filename) {
    if (!filename) return;
    
    var f = findFile(filename);
    if (!f || !f.isopen) {
        post("[dbap_csv_loader] Error: cannot find or open file: " + filename + "\n");
        return;
    }
    
    var rawSpeakers = [];
    var isHeader = true;
    
    while (f.position < f.eof) {
        var line = f.readline();
        if (!line) continue;
        line = line.trim();
        if (line.length === 0) continue;
        
        // Skip UTF-8 BOM if present
        if (line.charCodeAt(0) === 0xFEFF) {
            line = line.substring(1);
        }
        
        var parts = line.split(";");
        if (parts.length < 4) {
            parts = line.split(",");
            if (parts.length < 4) {
                parts = line.split("\t");
            }
        }
        
        if (isHeader) {
            isHeader = false;
            continue;
        }
        
        var name = parts[0].trim();
        var x = parseFloat(parts[1].replace(",", "."));
        var y = parseFloat(parts[2].replace(",", "."));
        var z = parseFloat(parts[3].replace(",", "."));
        
        if (!isNaN(x) && !isNaN(y) && !isNaN(z)) {
            rawSpeakers.push({ name: name, x: x, y: y, z_raw: z });
        }
    }
    f.close();
    
    var count = rawSpeakers.length;
    if (count === 0) {
        post("[dbap_csv_loader] Warning: no valid speaker coordinates parsed.\n");
        return;
    }
    
    // Determine ear height offset
    var earHeight = detectEarHeight(rawSpeakers);
    post("[dbap_csv_loader] Ear level (Z=0 plane) set to: " + earHeight.toFixed(2) + " m\n");
    
    // Compute centered Z coordinates and maximum room radius
    var speakers = [];
    var maxRadius = 0.001;
    
    for (var k = 0; k < count; k++) {
        var spk = rawSpeakers[k];
        var zCentered = spk.z_raw - earHeight;
        var r = Math.sqrt(spk.x * spk.x + spk.y * spk.y + zCentered * zCentered);
        if (r > maxRadius) maxRadius = r;
        
        speakers.push({
            name: spk.name,
            x: spk.x,
            y: spk.y,
            z: zCentered,
            z_raw: spk.z_raw
        });
    }
    
    // Update Max buffer~ spk_pos (Channel 1: X, Channel 2: Y, Channel 3: Z relative to ear level)
    var b = new Buffer(bufferName);
    if (b && b.framecount() > 0) {
        for (var i = 0; i < 32; i++) {
            if (i < count) {
                b.poke(1, i, speakers[i].x);
                b.poke(2, i, speakers[i].y);
                b.poke(3, i, speakers[i].z);
            } else {
                b.poke(1, i, 0.0);
                b.poke(2, i, 0.0);
                b.poke(3, i, 0.0);
            }
        }
        b.send(); // Notify Max & gen~ that buffer has been modified
        post("[dbap_csv_loader] Written " + count + " speakers to buffer~ '" + bufferName + "' (Z centered on ear level)\n");
    } else {
        post("[dbap_csv_loader] Warning: buffer~ '" + bufferName + "' not found or has 0 frames.\n");
    }
    
    // Outlet 0: Notify gen~ with num_speakers and room_scale
    outlet(0, "num_speakers", count);
    outlet(0, "room_scale", parseFloat(maxRadius.toFixed(2)));
    
    // Outlet 1: Speaker names and summary list
    var names = ["speakers", count];
    for (var j = 0; j < count; j++) {
        names.push(speakers[j].name);
    }
    outlet(1, names);
    
    // Outlet 2: Broadcast to WebSocket bridge (s -to-visualizer- -> max_bridge.js -> Three.js viewer)
    var bareFilename = filename;
    var slashIdx = bareFilename.lastIndexOf("/");
    if (slashIdx !== -1) bareFilename = bareFilename.substring(slashIdx + 1);
    
    outlet(2, "/spk/clear");
    outlet(2, "/spk/layout", bareFilename, count, parseFloat(earHeight.toFixed(2)), parseFloat(maxRadius.toFixed(2)));
    for (var m = 0; m < count; m++) {
        outlet(2, "/spk/add", m + 1, speakers[m].name, speakers[m].x, speakers[m].y, parseFloat(speakers[m].z.toFixed(3)), parseFloat(speakers[m].z_raw.toFixed(3)));
    }
    outlet(2, "/spk/done", count);
    
    post("[dbap_csv_loader] Successfully loaded " + count + " speakers from: " + bareFilename + " (Radius: " + maxRadius.toFixed(2) + " m)\n");
}

function preset(name) {
    if (name === "maxBstudio") {
        read("maxBstudio-speaker-setup.csv");
    } else if (name === "gramestudio") {
        read("gramestudio-speaker-setup.csv");
    } else {
        read(name);
    }
}

function anything() {
    var args = arrayfromargs(arguments);
    if (messagename === "read") {
        read(args[0]);
    } else if (messagename === "ear_height" || messagename === "listener_z") {
        ear_height(args[0]);
    } else {
        read(messagename);
    }
}
