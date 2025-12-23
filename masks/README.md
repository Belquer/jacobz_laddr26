# Shining Mask OSC Control Server

Control your Shining Mask (MASK-E4B434) via OSC messages from Max/MSP, TouchOSC, or any OSC-compatible software.

## Setup

### First Time Setup

1. **Install Python dependencies:**
   ```bash
   source venv/bin/activate
   pip install -r requirements.txt
   ```

2. **Turn on your mask** - Make sure it's powered on and in range.

3. **Run the server:**
   ```bash
   ./run_maskserver.command
   ```

   Or double-click `run_maskserver.command` in Finder.

## Usage

Once the server is running, you'll see:
```
✅ Connected to MASK-E4B434: True
🎛️  OSC ready on udp://127.0.0.1:9000  (/brightness,/image,/anim,/diy)
```

### OSC Commands

Send OSC messages to `127.0.0.1:9000`:

- **`/brightness <0-255>`** - Set mask brightness
  - Example: `/brightness 120`

- **`/image <index>`** - Select built-in image
  - Example: `/image 5`

- **`/anim <index>`** - Select built-in animation
  - Example: `/anim 3`

- **`/diy <index>`** - Select DIY gallery item (pre-uploaded via app)
  - Example: `/diy 1`

### Max/MSP Integration

Open `mask_control.maxpat` in Max/MSP to control the mask with a graphical interface.

## Troubleshooting

### Mask won't connect

1. **Turn mask off and on** - The mask only advertises for a short time after power-on
2. **Close other apps** - Make sure the official mask app isn't running
3. **Check Bluetooth** - Ensure Bluetooth is enabled on your Mac
4. **Run immediately after power-on** - Start the script right after turning the mask on

### Connection keeps dropping

The server has auto-reconnect functionality. If the mask goes to sleep or loses connection, it will automatically reconnect when the mask becomes available again.

### Port already in use

If you see "Address already in use" error:
```bash
lsof -ti:9000 | xargs kill -9
```

## Technical Details

- **Device Name:** MASK-E4B434
- **BLE Address:** E3A6086B-E8F1-3774-C548-A25330A61C56
- **OSC Port:** 9000 (UDP)
- **Protocol:** Bluetooth Low Energy (BLE)
- **Encryption:** AES-128

## Files

- **`run_maskserver.command`** - Main launcher script
- **`mask_control_server.py`** - Python OSC server
- **`mask_control.maxpat`** - Max/MSP control interface
- **`requirements.txt`** - Python dependencies
- **`venv/`** - Python virtual environment

## Dependencies

- Python 3.10+
- bleak (Bluetooth LE library)
- pycryptodome (encryption)
- python-osc (OSC server)

All dependencies are installed in the virtual environment (`venv/`).
