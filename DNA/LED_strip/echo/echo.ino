// echo.ino — diagnostic, no LED, no parsing.
// Echoes every received byte back. Used to measure raw round-trip
// throughput at the chosen baud rate.

void setup() {
  Serial.begin(115200);
}

void loop() {
  while (Serial.available()) {
    Serial.write(Serial.read());
  }
}
