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
 * =============================================================================
 */

const maxApi = require("max-api");
let WebSocket;

try {
  WebSocket = require("ws");
} catch (e) {
  maxApi.post("[Bridge Error] Missing 'ws' module. Run 'npm install ws' in the patch directory.\n");
}

let wss = null;
const clients = new Set();
const PORT = 8080;
let cachedSpeakerLayout = [];

if (WebSocket) {
  wss = new WebSocket.Server({ port: PORT }, () => {
    maxApi.post(`[Bridge] WebSocket server ready and listening on ws://localhost:${PORT}\n`);
    maxApi.outlet("ready", 1);
  });

  wss.on("connection", (ws) => {
    clients.add(ws);
    maxApi.post(`[Bridge] 3D WebGL viewer connected! (Total clients: ${clients.size})\n`);
    maxApi.outlet("connected", clients.size);

    // Replay cached speaker layout to newly connected viewer so it renders immediately
    if (cachedSpeakerLayout.length > 0) {
      maxApi.post(`[Bridge] Replaying ${cachedSpeakerLayout.length} cached layout messages to viewer\n`);
      for (const line of cachedSpeakerLayout) {
        if (ws.readyState === WebSocket.OPEN) {
          ws.send(line);
        }
      }
    }

    ws.on("close", () => {
      clients.delete(ws);
      maxApi.post(`[Bridge] 3D viewer disconnected. (Remaining clients: ${clients.size})\n`);
      maxApi.outlet("connected", clients.size);
    });

    ws.on("error", (err) => {
      maxApi.post(`[Bridge Client Error] ${err.message}\n`);
    });
  });
}

/**
 * Handle incoming Max/MSP messages.
 * Note: in Node for Max, MESSAGE_TYPES.ALL callback receives:
 *   (handled_boolean, selector, ...args)
 */
maxApi.addHandler(maxApi.MESSAGE_TYPES.ALL, (handled, ...args) => {
  // Strip the boolean "handled" argument passed by Node for Max
  const actualTokens = (typeof handled === "boolean") ? args : [handled, ...args];
  if (actualTokens.length === 0) return;

  const rawLine = actualTokens.join(" ").trim();
  if (!rawLine) return;

  // Cache speaker layout messages
  if (rawLine.startsWith("/spk/clear")) {
    cachedSpeakerLayout = [rawLine];
  } else if (rawLine.startsWith("/spk/")) {
    cachedSpeakerLayout.push(rawLine);
  }

  if (clients.size === 0) return;

  for (const client of clients) {
    if (client.readyState === WebSocket.OPEN) {
      client.send(rawLine);
    }
  }
});
