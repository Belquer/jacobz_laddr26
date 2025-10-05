# AprilTag to Max/MSP OSC Bridge

`apriltag2max.py` captures video from a selected camera, detects AprilTags (family `tag36h11`), and sends per-tag data to Max/MSP (or any OSC listener) over UDP.

## Features
- Automatic camera probing & optional interactive selection (`--interactive`)
- Camera listing with macOS system and (optional) ffmpeg avfoundation names (`--list`, `--ffmpeg-names`)
- Preview window overlay (`--show`) with outlines, centers, and tag IDs
- OSC output: `/card [tag_id, center_x, center_y, angle_deg]`
- Auto-reconnect on read failures (`--reconnect` / configurable thresholds)
- Frame rate & resolution control (`--width`, `--height`, `--fps`)
- macOS camera permission guidance

## Install
From the project directory (virtualenv already present in your workflow):
```bash
pip install pupil-apriltags opencv-python python-osc
```
(Optional) ffmpeg for better camera names:
```bash
# macOS (Homebrew)
brew install ffmpeg
```

## Quick Start
List cameras with names:
```bash
python apriltag2max.py --list --ffmpeg-names
```
Interactive selection + preview:
```bash
python apriltag2max.py --interactive --ffmpeg-names --show
```

Interactive with cycling previews (each camera for 2s):
```bash
python apriltag2max.py --interactive --preview-cycle --preview-seconds 2.0 --show
```

If camera names appear swapped (macOS ordering mismatch), at the selection prompt type:
```
swap
```
and the displayed labels will reverse while indices remain the same.

Name mapping heuristic:
1. If ffmpeg avfoundation names are requested (`--ffmpeg-names`) and at least as many names as cameras are found, that ordering is used.
2. Otherwise macOS system_profiler names are used.
3. A simple heuristic keeps a MacBook/FaceTime style camera before an iPhone/Continuity camera when only two devices are present.
4. You can always override visually with `--preview-cycle` or manually with `swap`.
Force a specific camera:
```bash
python apriltag2max.py --cam 1 --show
```
Headless (only OSC output):
```bash
python apriltag2max.py --cam 0
```
Enable auto-reconnect:
```bash
python apriltag2max.py --cam 1 --reconnect --reconnect-tries 5 --reconnect-delay 2.0
```

Quit keys:
- In windows (preview or detection): press `Q` (or `ESC`). On macOS `Cmd+Q` while the OpenCV window is focused typically sends the same quit intent; if it doesn’t, just press `Q`.

## Unified Source & ESP32-CAM
Use `--source` for everything (local index, file, or network stream). Examples:
```
python apriltag2max.py --source 1            # Local camera index 1
python apriltag2max.py --source 0            # Local camera index 0
python apriltag2max.py --source http://esp.local:81/stream  # ESP32-CAM stream
python apriltag2max.py --esp esp.local       # Shortcut builds http://esp.local:81/stream
```
The last successful `--source` (or `--esp`) is saved to `camera_config.json`; future runs with no arguments reuse it.

## Packaging (macOS PyInstaller)
Generate a standalone binary and an app bundle:
```
chmod +x build_app.sh
./build_app.sh
```
Artifacts:
- `dist/AprilTag2Max` (one-file CLI)
- `dist/AprilTag2MaxApp.app` (Finder-launchable bundle, original)
- `dist/AprilTag2Max2App.app` (Second-generation Cocoa GUI bundle)

### GUI App (Finder Launch)
Launching the `.app` now opens a small control window (no video preview):

Components:
- Camera dropdown (auto-populated, probes indices 0..7)
- OSC Port entry (default 8000)
- Start / Stop / Quit buttons
- Status text showing frames, tag counts, reconnect messages

Behavior:
1. First launch auto-selects the last used camera (stored in `camera_config.json`) if present; otherwise first available camera.
2. Detection auto-starts on initial launch after camera selection.
3. Changing the camera restarts the detection thread.
4. No OpenCV preview window is shown; OSC messages continue to flow to `/card` at `127.0.0.1:<port>`.
5. Use Stop to pause detection, Start to resume, Quit to terminate the app.

The CLI workflow (running `apriltag2max.py` manually) is unchanged.

#### v2 Cocoa GUI (AprilTag2Max2App)
The v2 app introduces a native Cocoa window & menu (Cmd+Q) plus structured logging at `~/.apriltag2max/gui_v2.log` for Finder launches.

Build + DMG for v2:
```bash
chmod +x pack_dmg_v2.sh
./pack_dmg_v2.sh
```
Outputs:
- `dist/AprilTag2Max2.dmg`

Inside that DMG:
- `AprilTag2Max2App.app`
- `Applications` symlink
- `README.md`

Troubleshooting:
- If window does not appear, run binary directly:
  `./dist/AprilTag2Max2App.app/Contents/MacOS/AprilTag2Max2App`
- Check log: `tail -n 80 ~/.apriltag2max/gui_v2.log`
- Remove quarantine (unsigned build dev use only):
  `xattr -dr com.apple.quarantine dist/AprilTag2Max2App.app`

AprilTag native libs: The PyInstaller spec now auto-collects `pupil_apriltags` dynamic libraries. If you still see an error like:
```
RuntimeError: Could not find clib with pattern libapriltag*.dylib
```
Clean and rebuild:
```
rm -rf build dist __pycache__ *.spec
./build_app.sh
```

You can then double-click the `.app` or run the binary directly:
```
./dist/AprilTag2Max --source 1 --show
```
If Gatekeeper blocks it the first time, right-click → Open.

### Create a DMG (Drag-and-Drop Installer)
After building the app bundle, you can generate a distributable DMG:
```bash
chmod +x pack_dmg.sh
./pack_dmg.sh
```
Outputs:
- `dist/AprilTag2Max.dmg`

Inside the mounted DMG the user will see:
- `AprilTag2MaxApp.app`
- `Applications` symlink (drag the app onto it to install)
- `README.md`

#### Optional: Sign the App & DMG
Code sign the .app first (replace TEAMID & identity):
```bash
codesign --force --deep --timestamp \
  --sign "Developer ID Application: Your Name (TEAMID)" \
  dist/AprilTag2MaxApp.app
```
Then rebuild the DMG (run `./pack_dmg.sh` again) or sign the DMG itself:
```bash
codesign --force --timestamp \
  --sign "Developer ID Application: Your Name (TEAMID)" \
  dist/AprilTag2Max.dmg
```

#### Notarization (Recommended for macOS distribution)
Use Apple notary service (requires Xcode tools & credentials):
```bash
xcrun notarytool submit dist/AprilTag2Max.dmg \
  --apple-id YOUR_APPLE_ID \
  --team-id TEAMID \
  --password APP_SPECIFIC_PASSWORD \
  --wait
xcrun stapler staple dist/AprilTag2Max.dmg
```
Verify staple:
```bash
xcrun stapler validate dist/AprilTag2Max.dmg
```

### Keeping `dist` Clean
Repeated PyInstaller runs (and DMG staging) can leave extra folders like `dist/AprilTag2MaxApp`, `dist/AprilTag2MaxApp 2`, or `_internal/` duplicates plus a top-level `.dmg_staging/` folder.

To prune clutter safely while keeping only the primary artifacts:
```bash
./clean_dist.sh
```
Resulting minimal layout:
```
dist/
  AprilTag2Max           # CLI binary
  AprilTag2MaxApp.app    # Finder-launchable bundle
  AprilTag2Max.dmg       # Optional installer (if you ran pack_dmg.sh)
```
For a completely fresh rebuild (removes even those three):
```bash
./clean_dist.sh --all
./build_app.sh
./pack_dmg.sh   # (optional)
```
The build script will recreate everything as needed.

#### Customizing the DMG (Future Enhancements)
- Add a background image: create `.background/bg.png` inside the mounted volume before converting.
- Set window layout via AppleScript (optional polish).
- Add a custom volume icon (`.VolumeIcon.icns`) and run: `SetFile -a C <mountpoint>`.

#### Common DMG Issues
| Symptom | Cause | Fix |
|---------|-------|-----|
| "App is damaged" | Quarantine flag + unsigned | Sign & notarize, or user can: `xattr -dr com.apple.quarantine /Applications/AprilTag2MaxApp.app` |
| Gatekeeper refuse open | Not signed/not notarized | Right-click → Open (one-time) or sign & notarize |
| Missing camera permission | First launch blocked | Open once via right-click or run binary directly to trigger prompt |
| Tag library error (old build) | Pre-spec update build | Rebuild: `./build_app.sh` then recreate DMG |

---

## Config File
`camera_config.json` (auto-created) stores:
```
{ "preferred_source": "1" }
```
Delete or edit it to change the default; supplying `--source` overrides and updates it.

## OSC Details
- Host: 127.0.0.1 (edit constants `MAX_IP`, `MAX_PORT` inside the script if needed)
- Address: `/card`
- Arguments: `[tag_id:int, center_x:float, center_y:float, angle_deg:float]`
  - `center_x`, `center_y` are pixel coordinates
  - `angle_deg` is orientation derived from first two AprilTag corners

Example (Max `[udpreceive 8000]`):
```
/card 5 842.3 611.7 -12.4
```

## Flags Summary
| Flag | Description |
|------|-------------|
| `--cam N` | Force camera index N (skip probing) |
| `--interactive` | Prompt to choose camera if multiple |
| `--list` | List cameras and exit |
| `--probe-max N` | Probe up to N indices when listing |
| `--ffmpeg-names` | Include ffmpeg avfoundation names (macOS) |
| `--show` | Show live annotated preview window |
| `--width/--height` | Request resolution (best-effort) |
| `--fps` | Request FPS (best-effort) |
| `--family` | AprilTag family (default tag36h11) |
| `--reconnect` | Enable auto-reconnect on repeated failures |
| `--reconnect-tries N` | Failures before reconnect attempt |
| `--reconnect-delay S` | Delay before reconnect attempt |
| `--preview-cycle` | Before prompting, cycle through each candidate camera in a temporary window |
| `--preview-seconds` | Seconds each camera is shown during cycle (default 2.0) |

## macOS Camera Permission Notes
If the camera light never comes on:
1. Run: `python -c "import cv2; cv2.VideoCapture(0)"` to trigger permission
2. System Settings → Privacy & Security → Camera → enable Terminal / VS Code
3. If necessary: `tccutil reset Camera`

### macOS App Privacy Declarations
When distributing the `.app`, macOS requires privacy usage descriptions inside the app bundle `Info.plist`.
We embed:
- `NSCameraUsageDescription`: "AprilTag2Max needs camera access to detect AprilTags and send their positions over OSC to Max/MSP."

If you later add audio features, also add:
`NSMicrophoneUsageDescription`: "Microphone access is required for audio-based features."

Without these keys the GUI app will crash immediately (TCC privacy violation) before showing a permission dialog.

### App Icon
An application icon improves trust and brand recognition.

Automatic: `build_app.sh` now auto-generates a vector-like placeholder icon (no user image needed). The build will never fail due to a missing icon.

Optional Custom Icon:
1. Place a square PNG at `icon_src/base.png` (1024x1024 recommended).
2. Run:
  ```bash
  ./make_icon.sh
  ./build_app.sh
  ./pack_dmg.sh
  ```
3. Your custom icon overrides the auto-generated placeholder.

## Future Enhancements (Ideas)
- Pose estimation (3D) with tag size & intrinsics
- OSC heartbeat (`/alive`)
- Persistent last camera index cache
- Logging to file / JSON
- Tag filtering / rate limiting

## Troubleshooting
| Issue | Cause | Fix |
|-------|-------|-----|
| No tags detected | Low lighting / out of focus | Improve lighting, move closer |
| Frame drops / reconnect spam | Camera sleep or Continuity Camera switching | Use `--reconnect` or choose internal camera |
| Permission denied | macOS privacy not granted | Trigger prompt & enable in Settings |
| Wrong camera chosen | Auto-selected first | Use `--interactive` or `--cam` |

## License
Internal project helper script (add license text if/when needed).
