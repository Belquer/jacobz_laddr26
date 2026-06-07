# ESP32-CAM AprilTag Detector

Real-time AprilTag detection system using ESP32-CAM hardware and Python computer vision.

**Portable setup** - Works on any machine without configuration changes. ESP32-CAM runs as Access Point, Python sends OSC to localhost.

## Hardware Setup

- **ESP32-CAM module** configured as WiFi Access Point
- Default AP SSID: `ESP32-CAM-AP`
- AP **channel: 1** (pinned in `espcam_Ok.ino` via `AP_CHANNEL`)
- Stream endpoint: `http://192.168.4.1:81/stream`

> **Runs in parallel with the DNA LED installation.** The DNA LED rope is
> driven wirelessly over ESP-NOW on **channel 11**, deliberately
> non-overlapping with this camera's **channel 1**, so the two wireless
> systems never contend for 2.4 GHz airtime. If you change this AP's
> channel, change the LED link to match (keep them non-overlapping —
> 1 / 6 / 11). See `DNA/README.md` → "Running alongside the ESP32-CAM".

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
- `--osc-ip`: OSC output IP address (default: 127.0.0.1)
- `--osc-port`: OSC output port (default: 5001)
- `--no-display`: **headless** — skip the preview window for minimum
  latency/CPU. Use this in the show; use the window only for setup/aim.
- `--width`: preview window width only (default: 640). Detection always
  runs on the camera's native low-res frame, not the preview.
- `--quad-decimate`: AprilTag decimation (default: 1.0 = full res, best
  at low camera res). Raise to 2.0 to detect faster at the cost of range.
- `--nthreads`: detector threads (default: 4).
- `--no-edges`: send only `/apriltag`, suppress the enter/exit/none edges.
- `--no-continuous`: send only the enter/exit edges, not `/apriltag`
  every frame.
- `--stats`: print fps and per-frame detection time once a second.
- `--heartbeat`: seconds between `/cam/heartbeat` liveness messages
  (default 1.0; `0` disables). See "Liveness heartbeat" below.

### Low latency / efficiency (why a card flip reacts instantly)

This camera reads AprilTags only, so everything is tuned for **fast
reaction**, not image quality:

- **Camera:** low-res (QVGA) + efficient JPEG (`TAG_FRAMESIZE` /
  `TAG_JPEG_QUALITY` in `espcam_Ok.ino`), `CAMERA_GRAB_LATEST` so it
  always serves the freshest frame and drops stale ones. Small frames =
  less airtime and faster encode/transmit/detect.
- **Detector:** a background thread reads the MJPEG stream and keeps only
  the **latest** frame; detection always runs on the newest frame and
  discards anything that queued up while it was busy. This is the key
  fix — plain `VideoCapture.read()` in a loop buffers frames, so the lag
  grows over time. With the latest-frame reader, reaction stays pinned to
  real time no matter how long it runs.
- For the show, run **`--no-display`** to drop all GUI overhead.

### OSC Output

All messages go to `--osc-ip:--osc-port` (default `127.0.0.1:5001`):

| Address | Value | When |
| --- | --- | --- |
| `/apriltag` | tag id (int) | every frame, per visible tag (back-compat) |
| `/apriltag/enter` | tag id (int) | the frame a tag first appears |
| `/apriltag/exit` | tag id (int) | the frame a tag disappears |
| `/apriltag/none` | `1` | when the last tag leaves the frame |
| `/cam_status` | `connected`/`disconnected` | on stream connect/loss (edge) |
| `/cam/heartbeat` | `seq fps connected` | every `--heartbeat` s (default 1.0) |

The `/enter`, `/exit`, and `/none` **edge** messages are what make a card
flip feel instant in Max — you react on the transition instead of waiting
for a timeout to notice a tag is gone. They use new addresses, so a patch
that only listens on `/apriltag` keeps working unchanged.

### Liveness heartbeat (knowing it's alive in `--no-display`)

In headless mode there's no window to glance at, so the detector sends a
periodic `/cam/heartbeat seq fps connected` (default every 1 s, set with
`--heartbeat <secs>`, `0` to disable). It's also printed to the terminal
as a `♥ heartbeat …` line.

**Architecture — why it's a real watchdog:** the heartbeat is emitted
from *inside the processing loop*, not from a side thread. So if the loop
hangs or the process dies, the beats stop and Max can alarm. The payload
distinguishes the failure modes:

| In Max you see… | Meaning |
| --- | --- |
| beats arriving, `fps > 0` | fully healthy |
| beats arriving, `fps == 0`, `connected == 1` | process + link alive but **stream stalled** |
| beats arriving, `connected == 0` | camera lost (also `/cam_status disconnected`) |
| **no beat for > ~2.5×interval** | detector loop hung or process dead |

**Max watchdog patch** (the last row — detecting *absence*):

```
[udpreceive 5001]
   │
[route /cam/heartbeat]
   │ (bang on every beat)
   ├─────────────► [unpack 0 0. 0]   ← seq, fps, connected for display
   │
[del 2500]                            ← restarted by every beat
   │ (fires only if NO beat for 2.5 s)
[t b]
   │
"DETECTOR DOWN"  → trigger your fail-safe (e.g. hold/blackout the rope)
```

Each heartbeat bangs `[del 2500]`, which keeps cancelling/restarting it.
If a beat is ever missed for 2.5 s, `[del]` fires — that's your
"detector is dead" signal. Tighten `2500` and `--heartbeat` together for
a faster trip (e.g. `--heartbeat 0.5` + `[del 1500]`).

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
