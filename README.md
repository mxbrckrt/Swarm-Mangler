# Swarm-Mangler

> **A 32-voice polyphonic player, built-in ADM spatializer, real-time 3D WebGL monitor, and multichannel matrix (up to 64 outputs) designed for electroacoustic composition and multi-loudspeaker arrays. Includes ADM-compliant OSC telemetry for external spatial renderers.**

---

## ⚡ Highlights

- **32 Parallel Voices**: Autonomous polyphonic granular engine powered by native `[mcs.poly~ player-core 32]`.
- **Ballistic Spatial Engine**: Non-linear ease-in trajectory acceleration (`whiplash.gendsp`) and focused power-cosine panning with ISO air absorption (`adm_panner.gendsp`). Adaptive $Z$: planar median ear level ($Z = 0.5$) in 2D mode, full volume ($Z \in [0 \dots 1]$) in 3D mode.
- **Standalone 3D WebGL Visualizer**: Hardware-accelerated Three.js monitor with high-contrast yellow spheres, white speaker wireframes, vertical plumb lines, 8 ms anti-jitter masking, HUD/fullscreen toggles, and drag-and-drop CSV/XLSX speaker layout ingestion.
- **Sample-Accurate OSC Telemetry**: Emits `/adm/obj/<id>/xyz` packets over UDP for direct connection to Dolby Atmos, IRCAM SPAT, or L-Acoustics L-ISA.
- **32×64 Paged Matrix (`matrix_32x64.js`)**: Static 16×16 viewport addressing up to 64 physical Dante/DAC outputs with 1-click `diagonal` 1:1 auto-patching and channel locking.
- **Multichannel FDN Reverb**: 4×4 unitary Hadamard feedback network (`fdn_multireverb.gendsp`) featuring Golden Ratio prime detuning per loudspeaker channel and circular multiphase LFO rotation.
- **Microtonal & Modal Quantizer**: 40+ historical and contemporary scales (Messiaen, Scelsi, Berio, Manoury, Xenakis, Ligeti, Spectralists Grisey/Murail, Risset) with custom user slots.
- **Multitrack Recording**: Direct live capture up to 8 channels in uncompressed 24-bit WAV.
- **Zero Dependencies**: 100% Native Vanilla Max (MC + Gen). No third-party packages or compiled C externals required.

---

## 🎧 Quick Test: Stereo & Headphone Mode

You do not need a multichannel speaker dome or a Dante interface to get started:

1. In the main patcher header, set **`n° of channels`** to **`2`**.
2. Open **`output matrix patch`** and click the **`diagonal`** button (patches sources 1 & 2 directly to DAC outputs 1 & 2).
3. The ballistic spatializer and FDN reverb adapt smoothly to a standard stereo or binaural headphone experience.

---

## 🚀 60-Second Setup

1. **Audio Driver**: Click `edit card` in the header to select your audio interface. Click the speaker icon to turn the DSP engine ON (illuminates green).
2. **Load Audio**: Drag & drop any folder of audio files (WAV, AIFF, FLAC) onto the `-polybuffer-` drop zone.
3. **Channels & Matrix**: Set `n° of channels` (e.g. `2` for headphones, `8` for octophonic) and click `diagonal` in the matrix patcher.
4. **Modulation**: Toggle `Varispeed ON` or `Curve BPF`, then select an aesthetic scale from the `Harmony` menu.
5. **Trigger**: Click `trig one file` for a single ballistic event, or press `start arpeggio` to launch an immersive kinetic cloud.
6. **3D Telemetry**: Double-click `swarm_mangler_3d_spatial_viewer.html` in your browser to monitor all 32 voices and drop your speaker layouts in real time.

---

## 📖 Comprehensive Documentation

Swarm-Mangler comes with a complete, fully documented, bilingual (English / French) user manual:
- Open `documentation/index.html` directly in your browser.
- Or click the **Documentation** button inside the Max patch (launched via `openwebpage.js`).

---

## 💻 Compatibility

- **Cycling '74 Max**: Compatible with **Max 8** and **Max 9** (macOS & Windows).
- **Architecture**: 100% Native Max Vanilla (`mc.*`, `gen~`, `mc.gen~`, `js`, `jsui`).
- **Max 8 Visual Note**: Enable Dark Mode in Max 8 (`Preferences` → `Colors` → `Dark`) for optimal contrast with nocturnal UI tokens.

---

## 👤 Author & License

- **Author**: Max Bruckert (2026)
- **License**: Open-source for artistic creation, academic research, and electroacoustic performance.