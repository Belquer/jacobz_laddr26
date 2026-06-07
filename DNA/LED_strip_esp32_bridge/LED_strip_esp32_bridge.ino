// LED_strip_esp32_bridge.ino v1.0.2
//
// DNA wireless BRIDGE (classic ESP32 / WROOM, DevKitC).
// Drop-in replacement for the Arduino Uno on the Mac side: plug this
// board's USB into the Mac and point Max's [serial] at it (same baud,
// 250000). It speaks the EXACT same wire protocol Max already sends —
//
//     'F'(0x46), LEN_HI, LEN_LO, [LEN bytes RGB], CHK
//     <- 'R'(0x52) after each frame
//
// — validates each frame, fragments the payload into ESP-NOW chunks,
// broadcasts them to the receiver, waits briefly for the receiver's 'R'
// ack, then writes 'R' back to Max. So the Max patch, the framing JS,
// and the handshake-based flow control are all UNCHANGED.
//
// Pair with LED_strip_esp32_rx.ino. Both must use the same
// ESPNOW_CHANNEL and the same dna_espnow.h (DNA_PROTO_VERSION must match).
//
// This sketch is LED-count agnostic: it reads LEN from each frame and
// forwards exactly that many bytes, so you never need to reflash the
// bridge when you change the rope length — only the receiver.

#include <WiFi.h>
#include <esp_now.h>
#include <esp_wifi.h>
#include <esp_mac.h>
#include "dna_espnow.h"

#define VERSION "1.0.2"

#define BAUD            250000   // must match Max's [serial] (and the Uno)
#define ESPNOW_CHANNEL  11       // must match the receiver. Channel 11 is
                                 // non-overlapping with the ESP32-CAM AP
                                 // (ch1), so the camera stream and the LED
                                 // link never contend for airtime. The
                                 // bridge's radio is on ch11 even though the
                                 // Mac it plugs into is on ch1 — they only
                                 // share USB, not RF.
#define ACK_TIMEOUT_MS  25       // wait this long for the receiver 'R' before
                                 // releasing Max anyway (keeps stream alive
                                 // if a chunk drops; ~33ms budget @ 30fps)
#define TX_DONE_TIMEOUT_MS 6     // per-chunk wait for the ESP-NOW send callback

static const uint8_t BCAST[6] = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};

// ---- Serial frame parser (same state machine as LED_strip.ino, but LEN
//      is read dynamically instead of being fixed) -----------------------
enum ParseState : uint8_t { WAIT_HDR, WAIT_LEN_HI, WAIT_LEN_LO, WAIT_PAYLOAD, WAIT_CHK };
static ParseState state = WAIT_HDR;
static uint8_t  payload[DNA_MAX_PAYLOAD];
static uint16_t len = 0;
static uint16_t idx = 0;
static uint32_t sum = 0;
static uint32_t lastByteMs = 0;
static const uint16_t FRAME_IDLE_TIMEOUT_MS = 100;

// ---- ESP-NOW tx state -------------------------------------------------
static volatile bool    txDone     = false;
static volatile bool    ackGot     = false;
static uint8_t          frameSeq   = 0;
static uint8_t          waitingSeq = 0;

// Stats
static uint32_t framesFwd = 0, acksGot = 0, timeouts = 0, lastStatMs = 0;

static void reset_parser() { state = WAIT_HDR; len = 0; idx = 0; sum = 0; }

// Callback signatures vary by Arduino-ESP32 core version:
//   recv cb: gained esp_now_recv_info_t in core 3.0.0
//   send cb: gained wifi_tx_info_t      in core 3.3.0
#if defined(ESP_ARDUINO_VERSION) && ESP_ARDUINO_VERSION >= ESP_ARDUINO_VERSION_VAL(3,3,0)
void onSent(const wifi_tx_info_t* /*info*/, esp_now_send_status_t /*status*/) { txDone = true; }
#else
void onSent(const uint8_t* /*mac*/, esp_now_send_status_t /*status*/) { txDone = true; }
#endif

#if defined(ESP_ARDUINO_VERSION) && ESP_ARDUINO_VERSION >= ESP_ARDUINO_VERSION_VAL(3,0,0)
void onRecv(const esp_now_recv_info_t* /*info*/, const uint8_t* data, int len) {
#else
void onRecv(const uint8_t* /*mac*/, const uint8_t* data, int len) {
#endif
  if (len < (int)sizeof(DnaAck)) return;
  const DnaAck* a = (const DnaAck*)data;
  if (a->magic == DNA_MAGIC && a->kind == DNA_KIND_ACK && a->seq == waitingSeq) {
    ackGot = true;
  }
}

// Broadcast one chunk and wait (briefly) for the send callback, so we
// don't overrun ESP-NOW's small tx queue.
static bool sendChunkBlocking(const DnaChunk* c, uint8_t dataLen) {
  txDone = false;
  uint8_t pktLen = (uint8_t)(sizeof(DnaChunk) - CHUNK_DATA_MAX + dataLen);
  if (esp_now_send(BCAST, (const uint8_t*)c, pktLen) != ESP_OK) return false;
  uint32_t t0 = millis();
  while (!txDone && (millis() - t0) < TX_DONE_TIMEOUT_MS) { /* spin */ }
  return txDone;
}

// Fragment + broadcast a whole payload, then wait for the receiver ack.
static void forwardFrame(const uint8_t* p, uint16_t plen) {
  uint8_t seq = ++frameSeq;
  waitingSeq = seq;
  ackGot = false;

  uint8_t nChunks = (uint8_t)((plen + CHUNK_DATA_MAX - 1) / CHUNK_DATA_MAX);
  if (nChunks == 0) nChunks = 1;
  if (nChunks > DNA_MAX_CHUNKS) nChunks = DNA_MAX_CHUNKS;  // safety clamp

  DnaChunk c;
  c.magic    = DNA_MAGIC;
  c.kind     = DNA_KIND_CHUNK;
  c.proto    = DNA_PROTO_VERSION;
  c.seq      = seq;
  c.nChunks  = nChunks;
  c.totalLen = plen;

  for (uint8_t i = 0; i < nChunks; ++i) {
    uint16_t off = (uint16_t)i * CHUNK_DATA_MAX;
    uint8_t  ln  = (plen - off > CHUNK_DATA_MAX) ? CHUNK_DATA_MAX
                                                 : (uint8_t)(plen - off);
    c.chunkIdx = i;
    c.len      = ln;
    memcpy(c.data, p + off, ln);
    sendChunkBlocking(&c, ln);
  }
  framesFwd++;

  // Wait for the receiver to apply the frame and ack, but never stall
  // Max forever — release it after ACK_TIMEOUT_MS even on a dropped ack.
  uint32_t t0 = millis();
  while (!ackGot && (millis() - t0) < ACK_TIMEOUT_MS) { /* spin */ }
  if (ackGot) acksGot++; else timeouts++;

  Serial.write('R');           // hand control back to Max either way
}

void setup() {
  Serial.begin(BAUD);

  WiFi.mode(WIFI_STA);
  WiFi.disconnect();
  esp_wifi_set_channel(ESPNOW_CHANNEL, WIFI_SECOND_CHAN_NONE);

  if (esp_now_init() != ESP_OK) {
    Serial.println(F("ESP-NOW init FAILED — halting"));
    while (true) delay(1000);
  }
  esp_now_register_send_cb(onSent);
  esp_now_register_recv_cb(onRecv);

  esp_now_peer_info_t peer = {};
  memcpy(peer.peer_addr, BCAST, 6);
  peer.channel = ESPNOW_CHANNEL;
  peer.encrypt = false;
  esp_now_add_peer(&peer);

  reset_parser();
  delay(300);
  // Boot banner + initial 'R' so Max's handshake-gated sender starts,
  // exactly like the Uno did.
  Serial.println(F("LED_strip_esp32_bridge v" VERSION));
  Serial.printf("  proto v%d  channel %d  baud %d\n",
                DNA_PROTO_VERSION, ESPNOW_CHANNEL, BAUD);
  uint8_t mac[6];
  esp_read_mac(mac, ESP_MAC_WIFI_STA);   // efuse read — valid this early
  Serial.printf("  bridge MAC: %02X:%02X:%02X:%02X:%02X:%02X\n",
                mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
  Serial.write('R');
}

void loop() {
  if (state != WAIT_HDR && (millis() - lastByteMs) > FRAME_IDLE_TIMEOUT_MS) {
    reset_parser();
  }

  while (Serial.available()) {
    uint8_t b = (uint8_t)Serial.read();
    lastByteMs = millis();

    switch (state) {
      case WAIT_HDR:
        if (b == 'F') state = WAIT_LEN_HI;
        break;

      case WAIT_LEN_HI:
        len = ((uint16_t)b) << 8;
        state = WAIT_LEN_LO;
        break;

      case WAIT_LEN_LO:
        len |= b;
        if (len >= 3 && len <= DNA_MAX_PAYLOAD) {
          idx = 0;
          sum = 0;
          state = WAIT_PAYLOAD;
        } else {
          reset_parser();      // implausible length -> resync on next 'F'
        }
        break;

      case WAIT_PAYLOAD:
        payload[idx++] = b;
        sum += b;
        if (idx >= len) state = WAIT_CHK;
        break;

      case WAIT_CHK: {
        uint8_t chk = b;
        if (((uint8_t)sum) == chk) {
          forwardFrame(payload, len);   // valid frame -> over the air
        }
        reset_parser();
      } break;
    }
  }

  uint32_t now = millis();
  if (now - lastStatMs >= 1000) {
    lastStatMs = now;
    // Stats go to USB serial too; harmless to Max (it only reads 'R').
    // Comment out if the extra bytes ever confuse your patch.
    // Serial.printf("# fwd %lu acks %lu to %lu\n", framesFwd, acksGot, timeouts);
    framesFwd = 0; acksGot = 0; timeouts = 0;
  }
}
