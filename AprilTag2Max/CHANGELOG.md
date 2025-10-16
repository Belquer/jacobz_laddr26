# Changelog

All notable changes to this project will be documented in this file.
The format is based on Keep a Changelog (https://keepachangelog.com/en/1.0.0/)
and this project adheres (lightly) to Semantic Versioning.

## [2.0.0] - 2025-10-05
### Added
- Native macOS Cocoa GUI application (`AprilTag2Max2App.app`) with:
  - Camera dropdown auto-populating (probes indices 0..7)
  - OSC port field (default 8000)
  - Start / Stop / Quit buttons
  - Auto-start on first launch if camera available
  - Status panel with rolling log (frames/tags/reconnect messages)
  - Menu bar with proper Quit item (Cmd+Q)
- Logging of GUI launches to `~/.apriltag2max/gui_v2.log` to aid troubleshooting when launched via Finder.
- Separate PyInstaller spec (`AprilTag2Max2App.spec`) and DMG pack script (`pack_dmg_v2.sh`).
- Thread-safe reuse of core detection loop via `run_detection()` extracted from CLI logic.

### Changed
- Version bumped from 0.1.x experimental CLI-only builds to 2.0.0 to reflect first stable GUI distribution.
- Refactored camera configuration to unified `--source` (persisted in `camera_config.json`).

### Fixed
- Crashes related to Tkinter bundling by switching to PyObjC/Cocoa native UI.
- Objective‑C selector conflicts (`log`, `on_*`) by renaming methods and marking helpers with `@python_method`.

### Removed
- Deprecated interactive terminal camera selection (now replaced by GUI / persistent config).

### Security / Permissions
- Ensured `NSCameraUsageDescription` present in app `Info.plist`.

---

## [Unreleased]
- Notarization automation script.
- Optional OpenCV preview toggle inside GUI.
- OSC destination host customization field.
