#include <Adafruit_NeoPixel.h>

#define LED_PIN    9
#define NUM_LEDS   44
#define BAUD       115200

// Protocol (unchanged):
//  'F'(70), LEN(=132), [132 bytes RGB], CHK = sum(payload)&0xFF
// Handshake (new):
//  After a valid frame is applied and shown, Arduino sends 'R'(82).

Adafruit_NeoPixel strip(NUM_LEDS, LED_PIN, NEO_GRB + NEO_KHZ800);

// Parser state
enum ParseState : uint8_t { WAIT_HDR, WAIT_LEN, WAIT_PAYLOAD, WAIT_CHK };
ParseState state = WAIT_HDR;

const uint8_t EXPECTED_LEN = NUM_LEDS * 3;
static uint8_t payload[NUM_LEDS * 3];
uint8_t len = 0;
uint16_t idx = 0;      // index into payload
uint16_t sum = 0;      // running sum for checksum
uint32_t lastByteMs = 0;
const uint16_t FRAME_IDLE_TIMEOUT_MS = 50; // if no bytes for 50ms, reset parser

void reset_parser() {
  state = WAIT_HDR;
  len = 0;
  idx = 0;
  sum = 0;
}

void setup() {
  strip.begin();
  strip.show();
  Serial.begin(BAUD);
  reset_parser();
  // Signal ready for the very first frame
  Serial.write('R');
}

void loop() {
  // Timeout to recover from partial frames
  if (state != WAIT_HDR && (millis() - lastByteMs) > FRAME_IDLE_TIMEOUT_MS) {
    reset_parser();
  }

  while (Serial.available()) {
    uint8_t b = (uint8_t)Serial.read();
    lastByteMs = millis();

    switch (state) {
      case WAIT_HDR:
        if (b == 'F') {
          state = WAIT_LEN;
        }
        break;

      case WAIT_LEN:
        len = b;
        if (len == EXPECTED_LEN) {
          idx = 0;
          sum = 0;
          state = WAIT_PAYLOAD;
        } else {
          // wrong length; resync
          reset_parser();
        }
        break;

      case WAIT_PAYLOAD:
        payload[idx++] = b;
        sum += b;
        if (idx >= EXPECTED_LEN) {
          state = WAIT_CHK;
        }
        break;

      case WAIT_CHK: {
        uint8_t chk = b;
        if (((uint8_t)sum) == chk) {
          // Valid frame -> apply and show
          uint16_t j = 0;
          for (uint16_t i = 0; i < NUM_LEDS; ++i) {
            uint8_t r = payload[j++];
            uint8_t g = payload[j++];
            uint8_t blu = payload[j++];
            strip.setPixelColor(i, r, g, blu);
          }
          strip.show();           // interrupts disabled briefly here
          Serial.write('R');      // tell host it's safe to send next frame
        }
        // Whether checksum passed or not, reset to find next frame
        reset_parser();
        } break;
    }
  }
}