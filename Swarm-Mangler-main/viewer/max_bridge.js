/**
 * =============================================================================
 * SWARM-MANGLER // NODE FOR MAX WEBSOCKET TELEMETRY BRIDGE
 * =============================================================================
 * 
 * @file        max_bridge.js
 * @project     Swarm-Mangler Spatial Ecosystem
 * @description Real-time WebSocket relay server bridging Max/MSP OSC telemetry
 *              streams (/adm/obj/<ID>/xyz) and speaker layout messages (/spk/...)
 *              to external WebGL viewers (Three.js).
 * @author      Max Bruckert (2026)
 * 
 * @requirements
 *   - Node for Max (bundled with Max 8 / Max 9)
 *   - 'ws' package (install via terminal: `npm install ws` in the patch folder)
 * 
 * @io
 *   - Inlet 1   : Max OSC streams and system control messages ('script start', etc.)
 *   - Outlet 1  : Status notifications ('ready 1', 'connected <count>')
 * 
 * @network
 *   - Protocol  : WebSocket (ws://)
 *   - Port      : 8080 (default)
 * =============================================================================
 */

const maxApi = require('max-api');
let WebSocket;

try {
  WebSocket = require('ws');
} catch (e) {
  maxApi.post("[Bridge Error] Missing 'ws' module. Run 'npm install ws' in the patch directory.\n");
}

let wss = null;
const clients = new Set();
const PORT = 8080;
let cachedSpeakerLayout = [];

if (WebSocket) {
  // Initialize local WebSocket server
  wss = new WebSocket.Server({ port: PORT }, () => {
    maxApi.post(`[Bridge] WebSocket server ready and listening on ws://localhost:${PORT}\n`);
    maxApi.outlet('ready', 1);
  });

  // Handle client connections (WebGL viewer instances)
  wss.on('connection', (ws) => {
    clients.add(ws);
    maxApi.post(`[Bridge] 3D WebGL viewer connected! (Total clients: ${clients.size})\n`);
    maxApi.outlet('connected', clients.size);

    // Replay cached speaker layout to newly connected viewer so it renders immediately
    if (cachedSpeakerLayout.length > 0) {
      maxApi.post(`[Bridge] Replaying ${cachedSpeakerLayout.length} cached speaker layout messages to viewer\n`);
      for (const line of cachedSpeakerLayout) {
        if (ws.readyState === WebSocket.OPEN) {
          ws.send(line);
        }
      }
    }

    ws.on('close', () => {
      clients.delete(ws);
      maxApi.post(`[Bridge] 3D viewer disconnected. (Remaining clients: ${clients.size})\n`);
      maxApi.outlet('connected', clients.size);
    });

    ws.on('error', (err) => {
      maxApi.post(`[Bridge Client Error] ${err.message}\n`);
    });
  });
}

/**
 * Handle incoming Max/MSP messages across all types.
 * Reconstructs raw OSC strings (e.g. "/adm/obj/24/xyz 0.45 0.75 0.3" or "/spk/layout ...")
 * and broadcasts them immediately to all active WebSocket clients.
 */
maxApi.addHandler(maxApi.MESSAGE_TYPES.ALL, (msg, ...args) => {
  const rawLine = args.length > 0 ? `${msg} ${args.join(' ')}` : String(msg);

  // Cache layout messages so newly connected clients get the layout immediately
  if (rawLine.startsWith('/spk/clear')) {
    cachedSpeakerLayout = [rawLine];
  } else if (rawLine.startsWith('/spk/')) {
    cachedSpeakerLayout.push(rawLine);
  }

  if (clients.size === 0) return;

  for (const client of clients) {
    if (client.readyState === WebSocket.OPEN) {
      client.send(rawLine);
    }
  }
});
