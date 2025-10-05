# Releasing

This project uses semantic versioning MAJOR.MINOR.PATCH.
Current stable GUI release: 2.0.0

## 1. Bump Version
Edit `VERSION` with the new number (e.g. 2.0.1, 2.1.0, or 3.0.0).
Update `CHANGELOG.md` under Unreleased -> new section with date.

## 2. Clean & Build
```bash
./clean_dist.sh --all  # optional full reset
./build_app.sh         # builds CLI, original app, v2 app
./pack_dmg.sh          # original DMG (optional if still supported)
./pack_dmg_v2.sh       # v2 DMG (primary distribution)
```

## 3. (Optional) Code Sign
```bash
codesign --force --deep --timestamp \
  --sign "Developer ID Application: Your Name (TEAMID)" \
  dist/AprilTag2Max2App.app
```
Repeat for original app if still shipping both.

## 4. Notarize (Recommended for distribution)
```bash
xcrun notarytool submit dist/AprilTag2Max2.dmg \
  --apple-id YOUR_APPLE_ID \
  --team-id TEAMID \
  --password APP_SPECIFIC_PASSWORD \
  --wait
xcrun stapler staple dist/AprilTag2Max2.dmg
```
Validate:
```bash
xcrun stapler validate dist/AprilTag2Max2.dmg
spctl -a -vv dist/AprilTag2Max2.dmg
```

## 5. Git Tag & Push
```bash
git add VERSION CHANGELOG.md README.md RELEASING.md *.spec pack_dmg*.sh build_app.sh
git commit -m "release: v2.0.0 stable GUI"
git tag -a v2.0.0 -m "AprilTag2Max v2.0.0 stable GUI"
git push origin main --tags
```

## 6. GitHub Release
1. Draft a new release from tag `vX.Y.Z`.
2. Title: `AprilTag2Max vX.Y.Z`
3. Paste corresponding CHANGELOG section.
4. Upload `dist/AprilTag2Max2.dmg` (and/or original `AprilTag2Max.dmg`).

## 7. Post-Release
- Create new `## [Unreleased]` section in `CHANGELOG.md` if removed.
- Plan next milestones (enhancements/issues).

## Versioning Guidelines
- Patch: bug fixes, packaging adjustments, minor internal improvements.
- Minor: new user-visible features (e.g. GUI preview toggle, host field).
- Major: breaking changes (protocol change, large architectural shifts).
