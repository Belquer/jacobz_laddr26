# -*- mode: python ; coding: utf-8 -*-
"""Spec for AprilTag2Max 2.0 Cocoa GUI app."""
from PyInstaller.utils.hooks import collect_dynamic_libs, collect_data_files

try:
    with open('VERSION','r') as vf:
        __version__ = vf.read().strip()
except Exception:
    __version__ = '2.0.0'

pupil_bins = collect_dynamic_libs('pupil_apriltags')
pupil_data = collect_data_files('pupil_apriltags', includes=['lib/*','lib64/*'])

extra_datas = [('README.md','.')] + pupil_data

a = Analysis(
    ['tag_app_cocoa2.py'],
    pathex=[],
    binaries=pupil_bins,
    datas=extra_datas,
    hiddenimports=['pupil_apriltags','objc','AppKit','Foundation'],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)
exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='AprilTag2Max2App',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=False,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=False,
    upx_exclude=[],
    name='AprilTag2Max2App',
)
app = BUNDLE(
    coll,
    name='AprilTag2Max2App.app',
    icon='build/icon/AprilTag2Max.icns',
    bundle_identifier='com.belquer.apriltag2max2',
    info_plist={
        'CFBundleName': 'AprilTag2Max 2.0',
        'CFBundleDisplayName': 'AprilTag2Max 2.0',
        'CFBundleShortVersionString': __version__,
        'CFBundleVersion': __version__,
        'NSCameraUsageDescription': 'AprilTag2Max needs camera access to detect AprilTags and send their positions over OSC to Max/MSP.',
        'LSMinimumSystemVersion': '13.0',
    },
)
