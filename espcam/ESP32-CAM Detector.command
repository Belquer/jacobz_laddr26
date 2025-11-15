#!/bin/bash
cd "/Users/danielbelquer/Documents/GitHub/espcam"
clear
echo "🚀 ESP32-CAM AprilTag Detector"
echo "====================================="
echo "📡 Make sure you're connected to 'ESP32-CAM-AP' WiFi"
echo "🎯 Hold AprilTags in front of the camera"
echo "⏹️  Press 'q' to quit"
echo "====================================="
echo ""
echo "Starting..."
source esp32-cam-env/bin/activate
python ESP32Cam_Detector.py
echo ""
echo "❌ Detection stopped"
echo "Press Enter to close this window..."
read
