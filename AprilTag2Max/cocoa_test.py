#!/usr/bin/env python3
"""
Minimal Cocoa window smoke test.
Run with:  python cocoa_test.py
If this shows a window titled "Cocoa Test" then PyObjC works at runtime.
"""
import sys, traceback
from Cocoa import (
    NSApplication, NSWindow, NSBackingStoreBuffered,
    NSApplicationActivationPolicyRegular, NSRunningApplication,
    NSApplicationActivateIgnoringOtherApps
)
from PyObjCTools import AppHelper

def main():
    app = NSApplication.sharedApplication()
    app.setActivationPolicy_(NSApplicationActivationPolicyRegular)

    rect = ((300.0, 300.0), (520.0, 340.0))
    style =  (1 << 0) | (1 << 1) | (1 << 3) | (1 << 4)  # titled, closable, miniaturizable, resizable
    window = NSWindow.alloc().initWithContentRect_styleMask_backing_defer_(
        rect, style, NSBackingStoreBuffered, False
    )
    window.setTitle_("Cocoa Test")
    window.center()
    window.makeKeyAndOrderFront_(None)

    # Force front activation.
    app.activateIgnoringOtherApps_(True)

    AppHelper.runEventLoop()

if __name__ == "__main__":
    try:
        main()
    except Exception:
        traceback.print_exc()
        sys.exit(1)
