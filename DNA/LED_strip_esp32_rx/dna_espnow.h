// dna_espnow.h v1.0.1
// Shared ESP-NOW wire format for the DNA wireless link.
//
// This header is COPIED into both sketch folders by hand (Arduino can't
// share headers across .ino folders without a library). If you change
// anything here, change it in BOTH copies:
//   DNA/LED_strip_esp32_bridge/dna_espnow.h
//   DNA/LED_strip_esp32_rx/dna_espnow.h
//
// Bump DNA_PROTO_VERSION whenever the struct layout or the magic/kind
// constants change, so a mismatched bridge/receiver pair can be spotted
// from the boot banner.

#pragma once
#include <stdint.h>

#define DNA_PROTO_VERSION 1     // on-air protocol version (NOT the sketch semver)
#define DNA_MAGIC         0xDA  // first byte of every DNA ESP-NOW packet

// ESP-NOW caps a single payload at 250 bytes (ESP_NOW_MAX_DATA_LEN).
// Header below is 9 bytes, so we use 240 data bytes per chunk (9+240=249).
// 240 * 8 chunks = 1920 bytes = 640 LEDs, well above the current 213.
// All chunks except the last are exactly CHUNK_DATA_MAX, so the byte
// offset of a chunk is simply chunkIdx * CHUNK_DATA_MAX (no offset field).
#define CHUNK_DATA_MAX  240
#define DNA_MAX_CHUNKS  8
#define DNA_MAX_PAYLOAD (CHUNK_DATA_MAX * DNA_MAX_CHUNKS)  // 1920

// Packet "kind" tags (byte after magic) so the bridge and receiver can
// tell frame chunks apart from acks on the same broadcast address.
#define DNA_KIND_CHUNK 'C'
#define DNA_KIND_ACK   'R'

// One slice of a frame's RGB payload. Bridge -> receiver.  (9-byte header)
struct __attribute__((packed)) DnaChunk {
  uint8_t  magic;                // DNA_MAGIC
  uint8_t  kind;                 // DNA_KIND_CHUNK
  uint8_t  proto;                // DNA_PROTO_VERSION
  uint8_t  seq;                  // frame sequence number (wraps 0..255)
  uint8_t  chunkIdx;             // 0 .. nChunks-1
  uint8_t  nChunks;              // total chunks in this frame
  uint16_t totalLen;             // full payload length (e.g. 639)
  uint8_t  len;                  // bytes used in data[]
  uint8_t  data[CHUNK_DATA_MAX];
};

// Frame-applied handshake. Receiver -> bridge. Mirrors the Uno's 'R'.
struct __attribute__((packed)) DnaAck {
  uint8_t magic;                 // DNA_MAGIC
  uint8_t kind;                  // DNA_KIND_ACK
  uint8_t proto;                 // DNA_PROTO_VERSION
  uint8_t seq;                   // seq of the frame that was shown
};
