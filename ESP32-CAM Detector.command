#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
clear
echo "🚀 ESP32-CAM AprilTag Detector"
echo "====================================="
echo "📡 Make sure you're connected to 'ESP32-CAM-AP' WiFi"
echo "🎯 Hold AprilTags in front of the camera"
echo "⏹️  Press 'q' to quit"
echo "====================================="
echo ""
echo "Starting..."
source "$SCRIPT_DIR/.venv/bin/activate"
python "$SCRIPT_DIR/espcam/ESP32Cam_Detector.py"
echo ""
echo "❌ Detection stopped"
echo "Press Enter to close this window..."
read
