# AI & LLM Developer Guidelines: Architecture, DSP Conventions, and Best Practices

> **Target Audience:** Future AI models, LLMs, and autonomous coding agents working on the `GEN-patches` and `Swarm-Mangler` audio ecosystem.  
> **Author:** Max Bruckert (with Google DeepMind AI assistance)  
> **Date:** November 2026

This document defines the strict architectural standards, GenExpr quirks, coordinate systems, communication protocols, and workflows required to extend, debug, or refactor this codebase. **Any AI assistant working on this project must read and adhere to these guidelines.**

---

## 1. Ecosystem Overview & Separation of Concerns

The project is structured into two complementary repositories:
1. **`GEN-patches`** (`SEVERAL-devs-master/GEN-patches`):
   - **The Scientific DSP Laboratory:** Standalone, bit-accurate, peer-reviewed audio DSP algorithms implemented in Cycling '74 MaxMSP `gen~` (GenExpr).
   - Export-ready for C++ (`genlib`), Faust/WebAssembly AudioWorklet (`faust-gen-patches`), and embedded platforms (Electro-Smith Daisy / Oopsy).
   - Contains unit patches (`*.maxpat`), normalized `.gendsp` modules in `gendsp/`, Max JavaScript utilities in `code/`, and auto-generated scientific documentation in `docs/index.html`.
2. **`Swarm-Mangler`** (`Residences/Swarm-Mangler`):
   - **The Polyphonic Spatial Synthesizer Instrument:** An advanced multi-voice granular sampler and spatial performance instrument.
   - Houses the polyphonic voice matrix (`player-core.maxpat`), Node for Max bridge (`max_bridge.js`), real-time Three.js spatial visualizer (`viewer/`), and hardware/studio speaker layouts (`layouts/`).

---

## 2. GenExpr & Cycling '74 `gen~` Conventions & Traps

Cycling '74 Max `gen~` transpiles GenExpr codeboxes into Lua/C++ Abstract Syntax Trees (AST). It is **not** standard C or JavaScript. Respect the following critical rules:

### A. Lexical Scoping Inside Conditionals (The "Variable Not Defined" Trap)
```c
// ❌ FATAL ERROR IN GENEXPR:
if (mode > 0.5) {
    sx = in2; // sx is scoped ONLY inside this if block!
} else {
    sx = in3; // sx is scoped ONLY inside this else block!
}
out1 = sx; // COMPILER ERROR: "codebox: variable sx is not defined"

// ✅ CORRECT: Declare working variables in the outer scope first:
sx = 0.0;
if (mode > 0.5) {
    sx = in2;
} else {
    sx = in3;
}
out1 = sx;

// ✅ OR USE TERNARY EXPRESSIONS:
sx = (mode > 0.5) ? in2 : in3;
out1 = sx;
```

### B. Memory Allocation Limits (The "Out of Memory" Trap)
- Never instantiate large multi-dimensional tensors or inline data structures inside `gen~` (e.g. `Data coords(0.0, 1.732, -1.0, ...)` with dozens of literals).
- This triggers `allocating [data]: out of memory` during gen patcher compilation.
- **Rule:** Compute geometric arrays analytically (e.g. trigonometric circular distribution `k * 2*PI / total_spk`) or read dynamically from an external `buffer~` via `peek(buf, index, channel)`.

### C. Parameter Slewing & Anti-Click Smoothing
- Never modulate audio gains, dry/wet crossfades (`mix()`), or matrix weights directly from raw UI or LFO parameters without smoothing.
- Abrupt sample jumps create audible zipper noise and clicks.
- **Rule:** Always apply `slide()` or one-pole lowpass smoothing:
```c
// Smooth parameter over 240 samples (~5 ms at 48 kHz):
s_mix = slide(clamp(mix_rev * 0.01, 0.0, 1.0), 240, 240);
out1  = tanh(mix(in1, reverb_sig, s_mix));
```

---

## 3. Multichannel Architecture: The `[mc.gen~]` Paradigm

In previous iterations, spatializers used 32 discrete signal outlets (`out 1` to `out 32`), requiring massive patchcord webs and fixed channel counts.

### The Modern Standard: Single-Outlet Multi-Channel Evaluation
Both `spatial-dbap.gendsp` and `adm_panner.gendsp` are written with **a single audio inlet (`in 1`) and a single audio outlet (`out 1`)**.
- When loaded into `[mc.gen~ @chans N]`, Max instantiates the GenExpr codebox once per channel.
- Each instance queries its intrinsic channel identity:
  ```c
  total_spk = (num_speakers > 0) ? clamp(floor(num_speakers), 1, 32) : max(2, mc_channelcount);
  my_idx    = mc_channel - 1; // 0-based speaker channel index
  ```
- Each channel computes its individual distance, KNN taper, and equal-power normalized gain against its corresponding speaker coordinates.
- **Advantages:** Dynamically scales from 2 stereo speakers up to 32 or 64 channels with **zero** patch modifications, minimal CPU overhead, and full polyphonic compatibility.

---

## 4. 3D Spatial Coordinates & The ADM Standard

The spatial ecosystem strictly conforms to the **ADM (Audio Definition Model / ITU-R BS.2076)** coordinate convention:

| Axis | Range | Orientation | Description |
| :--- | :--- | :--- | :--- |
| **X** | `[-1.0, 1.0]` | Left &rarr; Right | Horizontal azimuth (Negative = Left, Positive = Right) |
| **Y** | `[-1.0, 1.0]` | Rear &rarr; Front | Horizontal depth (Negative = Behind listener, Positive = Stage/Front) |
| **Z** | `[-1.0, 1.0]` | Bottom &rarr; Top | Vertical elevation (**$Z = 0.0$ is strictly the listener's ear level**) |

### A. Automatic Ear-Level Centering ($Z_{\text{ear}} = 0.0$)
- Physical speaker measurements in CSV files often use the floor as origin ($Z \ge 0$).
- A seated listener's ear plane is typically at ~1.1 m &ndash; 1.2 m above the ground.
- `dbap_csv_loader.js` automatically computes the median vertical height:
  $$Z_{\text{ear}} = \frac{Z_{\max} + Z_{\min}}{2}$$
  and offsets all speaker coordinates before writing into `buffer~ spk_pos`:
  $$Z_{\text{centered}} = Z_{\text{raw}} - Z_{\text{ear}}$$

### B. Dynamic 2D vs. 3D Topology Auto-Detection
- If all speakers share identical vertical heights ($Z_{\max} == Z_{\min}$), `dbap_csv_loader.js` broadcasts `is3D 0`.
- In 2D mode:
  1. `master_engine.js` forces source trajectory modulation strictly to $Z = 0.0$.
  2. `swarm_mangler_3d_spatial_viewer.html` locks source height to $Y = 0.50$ (screen plane), completely hiding vertical stem lines and shadow disks to avoid visual confusion.
- In 3D mode (`is3D 1`), full dome elevation and 3D spherical orbits are enabled.

---

## 5. Node for Max & WebSocket Visualizer Protocol

The Three.js browser visualizer connects to Max via `max_bridge.js` (Node for Max) over WebSockets (`ws://localhost:8080`).

### A. Node for Max `MESSAGE_TYPES.ALL` Signature Trap
```javascript
// ❌ COMMON BUG:
maxApi.addHandler(maxApi.MESSAGE_TYPES.ALL, (msg, ...args) => {
    // In Node for Max, argument 0 is a boolean `handled` flag!
    // Treating `msg` as selector prepends "false " to every line!
});

// ✅ CORRECT: Check types or strip the handled flag:
maxApi.addHandler(maxApi.MESSAGE_TYPES.ALL, function() {
    let args = Array.prototype.slice.call(arguments);
    if (typeof args[0] === 'boolean') {
        args.shift(); // Strip internal handled flag
    }
    const selector = args[0];
    const params = args.slice(1);
    // Process selector and params cleanly
});
```

### B. Late-Join Layout Caching
- Browser tabs may be refreshed or opened after Max has already loaded the layout.
- `max_bridge.js` maintains a `cachedSpeakerLayout` array. Whenever a new WebSocket client connects, the bridge immediately pushes the cached layout messages (`/spk/clear`, `/spk/layout`, `/spk/add`, `/spk/done`), ensuring the speaker geometry renders without requiring a manual reload in Max.

### C. Voice Activation Grace Period
- Newly triggered polyphonic voices can briefly emit residual coordinates from their previous note release.
- `swarm_mangler_3d_spatial_viewer.html` implements an 8 ms opacity grace period (`SPAWN_HOLD_MS = 8`). The visual sphere snaps to the new position instantly under the hood, but holds opacity at 0.0 for 8 ms to allow Max's scheduler to overwrite coordinates smoothly without visual popping.

---

## 6. Directory Structure & File Placement Rules

When adding new files or refactoring existing ones, place them in their designated directories:

```text
Swarm-Mangler/Swarm-Mangler-main/
├── patchers/               # Max patchers (Swarm-Mangler-main.maxpat, player-core.maxpat)
├── code/                   # JavaScript & GenDSP modules (master_engine.js, dbap_csv_loader.js, spatial-dbap.gendsp, adm_panner.gendsp, fdn_multireverb.gendsp)
├── data/                   # Preset JSON files (mangler.json)
├── layouts/                # Authoritative speaker CSV layout files (*.csv)
└── viewer/                 # HTML5 / Three.js visualizer & Node bridge (swarm_mangler_3d_spatial_viewer.html, openviewer.js, max_bridge.js)

SEVERAL-devs-master/GEN-patches/
├── *.maxpat                # Standalone test/demo patchers for each DSP model
├── gendsp/                 # Normalized standalone .gendsp files (spatial-dbap.gendsp, adm_panner.gendsp, fdn_multireverb.gendsp, etc.)
├── code/                   # Supporting Max JavaScript utilities (dbap_csv_loader.js)
├── docs/                   # Scientific HTML documentation (index.html)
└── generate_html_docs.py   # Python generator for docs/index.html
```

---

## 7. AI Contribution & Git Workflow Rules

1. **Language:** All code, inline comments, commit messages, and documentation must be written in **standard technical English**.
2. **JSON Integrity:** Before committing any `.maxpat` or `.gendsp` file, verify its JSON syntax with `python3 -m json.tool <file> > /dev/null`.
3. **No Redundant Duplicates:** Never keep loose copies of `.js` or `.csv` files at the root of repositories.
4. **Clean Git State:** Always check `git status` and `git diff` before and after operations. Never push untested or unverified changes to `main` without explicit confirmation.
