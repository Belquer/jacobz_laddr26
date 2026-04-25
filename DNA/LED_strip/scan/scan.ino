// scan.ino — chipset / count diagnostic for WS281x / SK6812 rope.
//
// Behavior on boot:
//   1. All LEDs off.
//   2. Light pixel 0 red for 3 seconds.
//        - If 1 LED glows  -> per-LED addressable (WS2812B, SK6812).
//        - If 3 LEDs glow  -> WS2811 (one IC drives 3 LEDs).
//   3. Walk a single red dot from index 0 upward, 200 ms per step,
//      until MAX_SCAN. Watch where the dot stops — that's the
//      highest valid index (count = stop_index + 1, give or take
//      the IC-grouping for WS2811).
//
// Adjust MAX_SCAN if you suspect more than 300 LEDs.

#include <Adafruit_NeoPixel.h>

#define LED_PIN    9
#define MAX_SCAN   320
#define BAUD       115200

// Try NEO_RGB first (correct for WS2811). If color comes out wrong,
// switch to NEO_GRB (WS2812B / SK6812 default).
Adafruit_NeoPixel strip(MAX_SCAN, LED_PIN, NEO_RGB + NEO_KHZ800);

void setAllOff() {
  for (uint16_t i = 0; i < MAX_SCAN; ++i) strip.setPixelColor(i, 0, 0, 0);
  strip.show();
}

void setup() {
  Serial.begin(BAUD);
  strip.begin();
  strip.setBrightness(64);  // gentle on the PSU during scan
  setAllOff();
  delay(500);

  // Step 1: pixel 0 only -> count how many LEDs light up.
  Serial.println("Stage 1: pixel 0 = red. Count physical LEDs lit.");
  strip.setPixelColor(0, 255, 0, 0);
  strip.show();
  delay(3000);
}

void loop() {
  // Step 2: walking dot.
  for (uint16_t i = 0; i < MAX_SCAN; ++i) {
    setAllOff();
    strip.setPixelColor(i, 255, 0, 0);
    strip.show();
    Serial.print("idx=");
    Serial.println(i);
    delay(200);
  }
  // Loop forever so you can watch repeatedly.
}
