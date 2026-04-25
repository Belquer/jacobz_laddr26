#include <Adafruit_NeoPixel.h>

// --- Two-strip (parallel) configuration -------------------------------
// Strand A: pixels 0..NUM_LEDS_A-1, driven from LED_PIN_A
// Strand B: pixels NUM_LEDS_A..NUM_LEDS-1, driven from LED_PIN_B
//
// The Max-side protocol is unchanged: one big frame addressing
// NUM_LEDS pixels in sequence. The sketch splits the payload between
// the two NeoPixel objects internally.

#define LED_PIN_A    9
#define LED_PIN_B    10
#define NUM_LEDS_A   112
#define NUM_LEDS_B   113
#define NUM_LEDS     (NUM_LEDS_A + NUM_LEDS_B)
#define BAUD         1000000

// Protocol:
//  'F'(0x46), LEN_HI, LEN_LO (= NUM_LEDS*3),
//  [LEN bytes RGB], CHK = sum(payload) & 0xFF
// Handshake:
//  After a valid frame is applied and shown, Arduino sends 'R'(0x52).

Adafruit_NeoPixel stripA(NUM_LEDS_A, LED_PIN_A, NEO_BGR + NEO_KHZ800);
Adafruit_NeoPixel stripB(NUM_LEDS_B, LED_PIN_B, NEO_BGR + NEO_KHZ800);

enum ParseState : uint8_t { WAIT_HDR, WAIT_LEN_HI, WAIT_LEN_LO, WAIT_PAYLOAD, WAIT_CHK };
ParseState state = WAIT_HDR;

const uint16_t EXPECTED_LEN = NUM_LEDS * 3;
static uint8_t payload[NUM_LEDS * 3];
uint16_t len = 0;
uint16_t idx = 0;
uint32_t sum = 0;
uint32_t lastByteMs = 0;
const uint16_t FRAME_IDLE_TIMEOUT_MS = 100;

void reset_parser() {
  state = WAIT_HDR;
  len = 0;
  idx = 0;
  sum = 0;
}

void setup() {
  stripA.begin();
  stripB.begin();
  // Full brightness — control output level on the Max side so you
  // don't need to reflash to adjust. WARNING: 225 LEDs at full white
  // can pull ~13A; your 2.4A PSU will brown out long before that.
  // Keep Max-side levels modest until you upgrade the supply.
  stripA.setBrightness(255);
  stripB.setBrightness(255);
  stripA.show();
  stripB.show();

  Serial.begin(BAUD);
  reset_parser();

  // Settle delay — gives the strips time to power-stabilize before
  // the first data frame. Same fix that made rainbow.ino reliable.
  delay(500);

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
        if (len == EXPECTED_LEN) {
          idx = 0;
          sum = 0;
          state = WAIT_PAYLOAD;
        } else {
          reset_parser();
        }
        break;

      case WAIT_PAYLOAD:
        payload[idx++] = b;
        sum += b;
        if (idx >= EXPECTED_LEN) state = WAIT_CHK;
        break;

      case WAIT_CHK: {
        uint8_t chk = b;
        if (((uint8_t)sum) == chk) {
          uint16_t j = 0;
          for (uint16_t i = 0; i < NUM_LEDS_A; ++i) {
            stripA.setPixelColor(i, payload[j], payload[j + 1], payload[j + 2]);
            j += 3;
          }
          for (uint16_t i = 0; i < NUM_LEDS_B; ++i) {
            stripB.setPixelColor(i, payload[j], payload[j + 1], payload[j + 2]);
            j += 3;
          }
          stripA.show();
          stripB.show();
          Serial.write('R');
        }
        reset_parser();
      } break;
    }
  }
}
