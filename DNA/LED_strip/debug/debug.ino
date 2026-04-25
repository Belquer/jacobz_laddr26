// debug.ino — same parser as LED_strip but reports counters once per
// second instead of acking with 'R'. Tells us exactly where frames die.

#include <Adafruit_NeoPixel.h>

#define LED_PIN_A    9
#define LED_PIN_B    10
#define NUM_LEDS_A   90
#define NUM_LEDS_B   0
#define NUM_LEDS     (NUM_LEDS_A + NUM_LEDS_B)
#define BAUD         115200

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

uint32_t cBytes = 0, cGood = 0, cBadLen = 0, cBadChk = 0, cTimeout = 0;
uint32_t lastReport = 0;

void reset_parser() { state = WAIT_HDR; len = 0; idx = 0; sum = 0; }

void setup() {
  stripA.begin();
  stripB.begin();
  stripA.setBrightness(255);
  stripB.setBrightness(255);
  stripA.show();
  stripB.show();
  Serial.begin(BAUD);
  reset_parser();
  delay(500);
  Serial.println(F("DEBUG_READY"));
}

void loop() {
  if (state != WAIT_HDR && (millis() - lastByteMs) > FRAME_IDLE_TIMEOUT_MS) {
    cTimeout++;
    reset_parser();
  }

  while (Serial.available()) {
    uint8_t b = (uint8_t)Serial.read();
    cBytes++;
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
        if (len == EXPECTED_LEN) { idx = 0; sum = 0; state = WAIT_PAYLOAD; }
        else { cBadLen++; reset_parser(); }
        break;
      case WAIT_PAYLOAD:
        payload[idx++] = b;
        sum += b;
        if (idx >= EXPECTED_LEN) state = WAIT_CHK;
        break;
      case WAIT_CHK: {
        if (((uint8_t)sum) == b) {
          cGood++;
          uint16_t j = 0;
          for (uint16_t i = 0; i < NUM_LEDS_A; ++i) {
            stripA.setPixelColor(i, payload[j], payload[j+1], payload[j+2]);
            j += 3;
          }
          stripA.show();
        } else {
          cBadChk++;
        }
        reset_parser();
      } break;
    }
  }

  uint32_t now = millis();
  if (now - lastReport >= 1000) {
    Serial.print(F("bytes="));   Serial.print(cBytes);
    Serial.print(F(" good="));   Serial.print(cGood);
    Serial.print(F(" badLen=")); Serial.print(cBadLen);
    Serial.print(F(" badChk=")); Serial.print(cBadChk);
    Serial.print(F(" timeout="));Serial.println(cTimeout);
    cBytes = cGood = cBadLen = cBadChk = cTimeout = 0;
    lastReport = now;
  }
}
