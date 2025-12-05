# ESP32-CAM AprilTag Detector

Real-time AprilTag detection system using ESP32-CAM hardware and Python computer vision.

**Portable setup** - Works on any machine without configuration changes. ESP32-CAM runs as Access Point, Python sends OSC to localhost.

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

Detects AprilTags and sends tag IDs via OSC to `localhost:5001` (default).

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
   pip install opencv-python numpy pupil-apriltags python-osc requests
   ```

3. **Run detector:**
   ```bash
   python3 ESP32Cam_Detector.py
   ```

### Command-line Options

```bash
python3 ESP32Cam_Detector.py --ip 192.168.4.1 --port 81 --width 640 --osc-port 5001
```

- `--ip`: ESP32-CAM IP address (default: 192.168.4.1)
- `--port`: Stream port (default: 81)
- `--camera-url`: Full MJPEG URL (overrides ip/port)
- `--width`: Display width in pixels (default: 640)
- `--osc-ip`: OSC output IP address (default: 127.0.0.1)
- `--osc-port`: OSC output port (default: 5001)

### OSC Output

Detected AprilTag IDs are sent via OSC to localhost:5001 by default.

**OSC Message Format:**
```
Address: /apriltag
Value: [tag_id] (integer)
```

Receives one message per detected tag, per frame.

## AprilTag References

The `aprilTag pdf/` folder contains printable AprilTag markers for testing.

## Dependencies

- **Python**: OpenCV, NumPy, pupil-apriltags, python-osc, requests
- **Hardware**: ESP32-CAM module with camera

## Usage

1. Power on ESP32-CAM
2. Connect to `ESP32-CAM-AP` WiFi network
3. Launch detector (double-click .command file or run Python script)
4. Hold AprilTags in front of camera
5. Tags are detected with ID, center point, and bounding box overlay
6. Tag IDs are sent via OSC to localhost:5001 (use in Max/MSP, TouchDesigner, etc.)

## Troubleshooting

- **Can't connect to stream**: Verify WiFi connection to ESP32-CAM AP
- **No video**: Check ESP32-CAM is powered and sketch uploaded correctly
- **Python errors**: Ensure virtual environment is activated with all dependencies installed
