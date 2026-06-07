#!/bin/bash
# Flash ESP32 wireless.command v1.0.0
# Double-click helper to compile + upload the DNA wireless sketches to a
# classic ESP32 (WROOM / DevKitC). Flash the BRIDGE onto the board that
# plugs into the Mac, and the RECEIVER onto the board wired to the LEDs.
cd "$(dirname "$0")"

FQBN="esp32:esp32:esp32"   # classic ESP32 WROOM / DevKitC

echo "DNA — Flash ESP32 wireless v1.0.0"
echo
echo "Which sketch do you want to flash?"
echo "  1) BRIDGE   (USB into the Mac; replaces the Uno)"
echo "  2) RECEIVER (wired to the LED strands)"
read -p "Enter 1 or 2: " choice

case "$choice" in
  1) SKETCH="LED_strip_esp32_bridge" ;;
  2) SKETCH="LED_strip_esp32_rx" ;;
  *) echo "Invalid choice."; read -p "Press Enter to close..."; exit 1 ;;
esac

# Find an attached USB-serial board.
PORT=$(ls /dev/cu.usbserial* /dev/cu.SLAB_USBtoUART* /dev/cu.wchusbserial* /dev/cu.usbmodem* 2>/dev/null | head -n 1)
if [ -z "$PORT" ]; then
  echo "ERROR: no ESP32 serial port found (looked for /dev/cu.usbserial*,"
  echo "       SLAB_USBtoUART*, wchusbserial*, usbmodem*)."
  echo "       Plug the board in and re-run. Close Max's [serial] first if"
  echo "       you're reflashing the bridge."
  read -p "Press Enter to close..."
  exit 1
fi
echo "Using port: $PORT"
echo

echo "Compiling $SKETCH ..."
if ! arduino-cli compile --fqbn "$FQBN" "$SKETCH"; then
  echo "COMPILE FAILED."
  read -p "Press Enter to close..."
  exit 1
fi

echo
echo "Uploading $SKETCH to $PORT ..."
if ! arduino-cli upload --fqbn "$FQBN" --port "$PORT" "$SKETCH"; then
  echo "UPLOAD FAILED. If you see 'busy'/'no such file', close Max's [serial]"
  echo "(bridge) and retry. Some boards need the BOOT button held during upload."
  read -p "Press Enter to close..."
  exit 1
fi

echo
echo "DONE. Open the Serial Monitor at 115200 (receiver) or 250000 (bridge)"
echo "to see the boot banner, MAC address, and the ESP-NOW channel."
read -p "Press Enter to close..."
