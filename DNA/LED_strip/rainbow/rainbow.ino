// rainbow.ino — basic standalone rainbow for bench testing.
//
// Safe on USB power alone (no external PSU) for ~8-12 LEDs at this
// brightness. At BRIGHTNESS = 32, worst-case current is well under
// 100 mA total even at full saturation.
//
// Wiring:
//   Arduino D9  -> strip DIN (data)
//   Arduino GND -> strip GND
//   Arduino 5V  -> strip +5V   (USB-powered, low brightness only)

#include <Adafruit_NeoPixel.h>

#define LED_PIN     9
#define NUM_LEDS    8       // bump up cautiously while watching current
#define BRIGHTNESS  32      // 0-255 — keep low for USB-only power

Adafruit_NeoPixel strip(NUM_LEDS, LED_PIN, NEO_RGB + NEO_KHZ800);

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(115200);
  Serial.println(F("rainbow.ino booted"));
  Serial.print(F("LED_PIN="));     Serial.println(LED_PIN);
  Serial.print(F("NUM_LEDS="));    Serial.println(NUM_LEDS);
  Serial.print(F("BRIGHTNESS="));  Serial.println(BRIGHTNESS);

  strip.begin();
  strip.setBrightness(BRIGHTNESS);
  strip.show();   // all off

  // Boot beacon: pulse the onboard LED 3x so you know setup() ran.
  for (uint8_t i = 0; i < 3; i++) {
    digitalWrite(LED_BUILTIN, HIGH); delay(120);
    digitalWrite(LED_BUILTIN, LOW);  delay(120);
  }
}

uint16_t hueOffset = 0;
uint32_t lastHeartbeat = 0;
uint32_t frameCount = 0;

void loop() {
  for (uint16_t i = 0; i < NUM_LEDS; i++) {
    uint16_t hue = (uint16_t)(hueOffset + (uint32_t)i * 65536UL / NUM_LEDS);
    strip.setPixelColor(i, strip.gamma32(strip.ColorHSV(hue)));
  }
  strip.show();
  hueOffset += 256;
  frameCount++;

  // Heartbeat: toggle onboard LED + serial print once per second.
  uint32_t now = millis();
  if (now - lastHeartbeat >= 1000) {
    digitalWrite(LED_BUILTIN, !digitalRead(LED_BUILTIN));
    Serial.print(F("alive  frames="));
    Serial.print(frameCount);
    Serial.print(F("  hue="));
    Serial.println(hueOffset);
    lastHeartbeat = now;
  }

  delay(20);
}
