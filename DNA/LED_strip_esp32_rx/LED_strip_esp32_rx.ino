// LED_strip_esp32_rx.ino v1.0.2
//
// DNA wireless RECEIVER (classic ESP32 / WROOM, DevKitC).
// Listens for ESP-NOW frame chunks from the bridge, reassembles the
// per-LED RGB payload, drives the two WS281x strands, and sends an 'R'
// ack back over ESP-NOW (the wireless equivalent of the Uno's serial
// 'R' handshake, so Max keeps its flow control).
//
// Pair this with LED_strip_esp32_bridge.ino. Both must use the same
// ESPNOW_CHANNEL and the same dna_espnow.h (DNA_PROTO_VERSION must match).
//
// LED wiring mirrors the Uno sketch: strand A then strand B, both
// base->top, NEO_BGR. Only the data pins move (Uno D9/D10 -> ESP32
// GPIO 16/17). Power/ground wiring is unchanged: feed each strand from
// the PSU at its base and tie a COMMON GROUND between ESP32, both
// strands, and the PSU.
//
// Library note: use a recent Adafruit_NeoPixel (>=1.11). On ESP32 it
// drives the strip via the RMT peripheral, which does NOT globally
// disable interrupts, so WiFi/ESP-NOW keeps running cleanly during
// show(). Older bit-bang versions can glitch the radio.

#include <Adafruit_NeoPixel.h>
#include <WiFi.h>
#include <esp_now.h>
#include <esp_wifi.h>
#include <esp_mac.h>
#include "dna_espnow.h"

#define VERSION "1.0.2"

// ---- LED config (keep in sync with LED_strip.ino via dna_config.py) ----
#define LED_PIN_A    16
#define LED_PIN_B    17
#define NUM_LEDS_A   108
#define NUM_LEDS_B   105
#define NUM_LEDS     (NUM_LEDS_A + NUM_LEDS_B)

// Must match the bridge. The ESP32-CAM soft-AP runs on channel 1, so we
// deliberately put this ESP-NOW link on channel 11 — non-overlapping with
// ch1 (the 2.4 GHz non-overlapping trio is 1 / 6 / 11). The camera's heavy
// MJPEG stream and these LED frames then share NO airtime, so neither can
// starve the other. ESP-NOW never joins the AP, so it is free to use any
// channel as long as the bridge and receiver agree.
#define ESPNOW_CHANNEL 11

Adafruit_NeoPixel stripA(NUM_LEDS_A, LED_PIN_A, NEO_BGR + NEO_KHZ800);
Adafruit_NeoPixel stripB(NUM_LEDS_B, LED_PIN_B, NEO_BGR + NEO_KHZ800);

static const uint16_t EXPECTED_LEN = (uint16_t)NUM_LEDS * 3;
static const uint8_t  BCAST[6] = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};

// ---- Frame reassembly state (written in the ESP-NOW recv callback) ----
static uint8_t  frameBuf[DNA_MAX_PAYLOAD];
static uint8_t  curSeq      = 0xFF;   // seq currently being assembled
static uint16_t curTotal    = 0;
static uint8_t  expectChunks = 0;
static uint8_t  haveMask    = 0;      // bitmask of received chunkIdx
static uint8_t  haveCount   = 0;

static volatile bool     frameReady = false;
static volatile uint16_t readyLen   = 0;
static volatile uint8_t  readySeq   = 0;

// Stats (printed once/sec)
static uint32_t framesShown = 0, chunksRx = 0, lastStatMs = 0;

static void sendAck(uint8_t seq) {
  DnaAck a;
  a.magic = DNA_MAGIC;
  a.kind  = DNA_KIND_ACK;
  a.proto = DNA_PROTO_VERSION;
  a.seq   = seq;
  esp_now_send(BCAST, (const uint8_t*)&a, sizeof(a));
}

static void handleChunk(const DnaChunk* c, int len) {
  if (len < (int)(sizeof(DnaChunk) - CHUNK_DATA_MAX)) return;  // runt
  if (c->magic != DNA_MAGIC || c->kind != DNA_KIND_CHUNK) return;
  if (c->proto != DNA_PROTO_VERSION) return;
  if (c->nChunks == 0 || c->nChunks > DNA_MAX_CHUNKS) return;
  if (c->chunkIdx >= c->nChunks) return;

  chunksRx++;

  // New frame? (different seq) -> reset the assembly buffers.
  if (c->seq != curSeq) {
    curSeq       = c->seq;
    curTotal     = c->totalLen;
    expectChunks = c->nChunks;
    haveMask     = 0;
    haveCount    = 0;
  }

  uint16_t off = (uint16_t)c->chunkIdx * CHUNK_DATA_MAX;
  uint8_t  ln  = c->len;
  if (ln > CHUNK_DATA_MAX) ln = CHUNK_DATA_MAX;
  if ((uint32_t)off + ln <= sizeof(frameBuf)) {
    memcpy(frameBuf + off, c->data, ln);
  }

  uint8_t bit = (uint8_t)(1u << c->chunkIdx);
  if (!(haveMask & bit)) { haveMask |= bit; haveCount++; }

  // Whole frame present -> hand off to loop() for show() + ack.
  if (haveCount >= expectChunks) {
    readyLen   = curTotal;
    readySeq   = curSeq;
    frameReady = true;
    curSeq     = 0xFF;   // arm for the next frame, avoid re-triggering
  }
}

// ESP-NOW recv callback gained esp_now_recv_info_t in core 3.0.0.
#if defined(ESP_ARDUINO_VERSION) && ESP_ARDUINO_VERSION >= ESP_ARDUINO_VERSION_VAL(3,0,0)
void onRecv(const esp_now_recv_info_t* /*info*/, const uint8_t* data, int len) {
  handleChunk((const DnaChunk*)data, len);
}
#else
void onRecv(const uint8_t* /*mac*/, const uint8_t* data, int len) {
  handleChunk((const DnaChunk*)data, len);
}
#endif

static void applyFrame(const uint8_t* p, uint16_t plen) {
  if (plen > EXPECTED_LEN) plen = EXPECTED_LEN;   // ignore extra pixels
  uint16_t pixels = plen / 3;
  uint16_t j = 0, i = 0;
  for (; i < NUM_LEDS_A && (j / 3) < pixels; ++i, j += 3)
    stripA.setPixelColor(i, p[j], p[j + 1], p[j + 2]);
  // Strand B continues from where the payload left off.
  for (uint16_t k = 0; k < NUM_LEDS_B && (j / 3) < pixels; ++k, j += 3)
    stripB.setPixelColor(k, p[j], p[j + 1], p[j + 2]);
  stripA.show();
  stripB.show();
}

void setup() {
  stripA.begin();
  stripB.begin();
  stripA.setBrightness(255);   // control level on the Max side
  stripB.setBrightness(255);
  stripA.show();
  stripB.show();

  Serial.begin(115200);        // USB only used for the boot banner / stats
  delay(300);

  WiFi.mode(WIFI_STA);
  WiFi.disconnect();           // do NOT join any AP; ESP-NOW only
  esp_wifi_set_channel(ESPNOW_CHANNEL, WIFI_SECOND_CHAN_NONE);

  Serial.println(F("LED_strip_esp32_rx v" VERSION));
  Serial.printf("  proto v%d  channel %d  LEDs %d (A=%d B=%d)\n",
                DNA_PROTO_VERSION, ESPNOW_CHANNEL, NUM_LEDS, NUM_LEDS_A, NUM_LEDS_B);
  uint8_t mac[6];
  esp_read_mac(mac, ESP_MAC_WIFI_STA);   // efuse read — valid this early
  Serial.printf("  receiver MAC: %02X:%02X:%02X:%02X:%02X:%02X\n",
                mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

  if (esp_now_init() != ESP_OK) {
    Serial.println(F("ESP-NOW init FAILED — halting"));
    while (true) delay(1000);
  }
  esp_now_register_recv_cb(onRecv);

  // Add the broadcast address as a peer so we can send acks to it.
  esp_now_peer_info_t peer = {};
  memcpy(peer.peer_addr, BCAST, 6);
  peer.channel = ESPNOW_CHANNEL;
  peer.encrypt = false;
  esp_now_add_peer(&peer);

  Serial.println(F("ready — waiting for frames"));
}

void loop() {
  if (frameReady) {
    frameReady = false;
    // Snapshot the volatile metadata before reading the shared buffer.
    uint16_t plen = readyLen;
    uint8_t  seq  = readySeq;
    applyFrame(frameBuf, plen);
    sendAck(seq);
    framesShown++;
  }

  uint32_t now = millis();
  if (now - lastStatMs >= 1000) {
    lastStatMs = now;
    Serial.printf("frames %lu/s  chunks %lu/s\n",
                  (unsigned long)framesShown, (unsigned long)chunksRx);
    framesShown = 0;
    chunksRx = 0;
  }
}
