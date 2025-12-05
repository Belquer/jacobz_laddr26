# ESP32-CAM AprilTag Detector

Real-time AprilTag detection system using ESP32-CAM hardware and Python computer vision.

## Hardware Setup

- **ESP32-CAM module** configured as WiFi Access Point
- Default AP SSID: `ESP32-CAM-AP`
- Stream endpoint: `http://192.168.4.1:81/stream`

## Arduino Sketch

Upload `espcam_Ok/espcam_Ok.ino` to your ESP32-CAM using Arduino IDE.

**Required Arduino Libraries:**
- ESP32 board support
- Standard ESP32-CAM libraries

## Python Detector

### Quick Start (macOS)

Double-click `ESP32-CAM Detector.command` to launch the detector.

### Manual Setup

1. **Create virtual environment:**
   ```bash
   python3 -m venv esp32-cam-env
   source esp32-cam-env/bin/activate
   ```

2. **Install dependencies:**
   ```bash
   pip install opencv-python numpy pupil-apriltags requests
   ```

3. **Run detector:**
   ```bash
   python3 ESP32Cam_Detector.py
   ```

### Command-line Options

```bash
python3 ESP32Cam_Detector.py --ip 192.168.4.1 --port 81 --width 640
```

- `--ip`: ESP32-CAM IP address (default: 192.168.4.1)
- `--port`: Stream port (default: 81)
- `--camera-url`: Full MJPEG URL (overrides ip/port)
- `--width`: Display width in pixels (default: 640)

## AprilTag References

The `aprilTag pdf/` folder contains printable AprilTag markers for testing.

## Dependencies

- **Python**: OpenCV, NumPy, pupil-apriltags, requests
- **Hardware**: ESP32-CAM module with camera

## Usage

1. Power on ESP32-CAM
2. Connect to `ESP32-CAM-AP` WiFi network
3. Launch detector (double-click .command file or run Python script)
4. Hold AprilTags in front of camera
5. Tags are detected with ID, center point, and bounding box overlay

## Troubleshooting

- **Can't connect to stream**: Verify WiFi connection to ESP32-CAM AP
- **No video**: Check ESP32-CAM is powered and sketch uploaded correctly
- **Python errors**: Ensure virtual environment is activated with all dependencies installed
