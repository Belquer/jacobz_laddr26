#!/usr/bin/env python3
"""Native macOS Cocoa GUI for AprilTag2Max.

Window elements:
 - Camera NSPopUpButton
 - OSC Port NSTextField (default 8000)
 - Start / Stop / Quit NSButtons
 - Status multiline NSTextField (non-editable)

Uses run_detection from apriltag2max in a background thread.
"""
import sys, threading, time
import traceback
import objc
from Foundation import NSObject, NSTimer, NSLog
from AppKit import (
    NSApplication, NSApp, NSWindow, NSButton, NSTextField, NSPopUpButton,
    NSView, NSMakeRect, NSApplicationActivationPolicyRegular,
    NSRunningApplication, NSApplicationActivateIgnoringOtherApps,
    NSAlert, NSAlertStyleInformational
)

from apriltag2max import probe_cameras, run_detection, load_config, save_config

DEFAULT_PORT = 8000
WINDOW_W, WINDOW_H = 380, 240

class Controller(NSObject):
    def init(self):
        self = objc.super(Controller, self).init()
        if self is None:
            return None
        self.stop_event = threading.Event()
        self.worker = None
        self.cfg = load_config()
        self.status_lines = []
        self.build_ui()
        self.refresh_cameras(initial=True)
        return self

    # ---------------- UI -----------------
    def build_ui(self):
        style =  (1 << 0) | (1 << 1) | (1 << 3)  # titled, closable, miniaturizable
        self.window = NSWindow.alloc().initWithContentRect_styleMask_backing_defer_(
            NSMakeRect(0,0,WINDOW_W,WINDOW_H), style, 2, False)
        self.window.setTitle_("AprilTag2Max")
        self.window.center()

        content = self.window.contentView()

        y = WINDOW_H - 50
        self.camera_label = NSTextField.alloc().initWithFrame_(NSMakeRect(20, y, 120, 20))
        self.camera_label.setStringValue_("Camera:")
        self.camera_label.setBezeled_(False)
        self.camera_label.setEditable_(False)
        self.camera_label.setDrawsBackground_(False)
        content.addSubview_(self.camera_label)

        self.camera_popup = NSPopUpButton.alloc().initWithFrame_pullsDown_(NSMakeRect(110, y-2, 170, 26), False)
        content.addSubview_(self.camera_popup)

        self.refresh_btn = NSButton.alloc().initWithFrame_(NSMakeRect(290, y-2, 60, 26))
        self.refresh_btn.setTitle_("Refresh")
        self.refresh_btn.setTarget_(self)
        self.refresh_btn.setAction_(objc.selector(self.on_refresh, signature=b'v@:'))
        content.addSubview_(self.refresh_btn)

        y -= 45
        self.port_label = NSTextField.alloc().initWithFrame_(NSMakeRect(20, y, 120, 20))
        self.port_label.setStringValue_("OSC Port:")
        self.port_label.setBezeled_(False)
        self.port_label.setEditable_(False)
        self.port_label.setDrawsBackground_(False)
        content.addSubview_(self.port_label)

        self.port_field = NSTextField.alloc().initWithFrame_(NSMakeRect(110, y-2, 80, 24))
        self.port_field.setStringValue_(str(DEFAULT_PORT))
        content.addSubview_(self.port_field)

        y -= 50
        self.start_btn = NSButton.alloc().initWithFrame_(NSMakeRect(20, y, 80, 30))
        self.start_btn.setTitle_("Start")
        self.start_btn.setTarget_(self)
        self.start_btn.setAction_(objc.selector(self.on_start, signature=b'v@:'))
        content.addSubview_(self.start_btn)

        self.stop_btn = NSButton.alloc().initWithFrame_(NSMakeRect(110, y, 80, 30))
        self.stop_btn.setTitle_("Stop")
        self.stop_btn.setTarget_(self)
        self.stop_btn.setAction_(objc.selector(self.on_stop, signature=b'v@:'))
        self.stop_btn.setEnabled_(False)
        content.addSubview_(self.stop_btn)

        self.quit_btn = NSButton.alloc().initWithFrame_(NSMakeRect(200, y, 80, 30))
        self.quit_btn.setTitle_("Quit")
        self.quit_btn.setTarget_(self)
        self.quit_btn.setAction_(objc.selector(self.on_quit, signature=b'v@:'))
        content.addSubview_(self.quit_btn)

        self.status_field = NSTextField.alloc().initWithFrame_(NSMakeRect(20, 20, WINDOW_W-40, 70))
        self.status_field.setBezeled_(True)
        self.status_field.setEditable_(False)
        self.status_field.setDrawsBackground_(True)
        self.status_field.setStringValue_("Idle")
        content.addSubview_(self.status_field)

        self.window.makeKeyAndOrderFront_(None)

    # -------------- Helpers --------------
    def log(self, msg):
        # Maintain last few lines
        self.status_lines.append(msg)
        self.status_lines = self.status_lines[-5:]
        self.status_field.setStringValue_("\n".join(self.status_lines))

    def refresh_cameras(self, initial=False):
        cams = probe_cameras(limit=8)
        self.camera_popup.removeAllItems()
        for c in cams:
            self.camera_popup.addItemWithTitle_(str(c))
        preferred = self.cfg.get('preferred_source')
        if preferred and preferred.isdigit() and preferred in [str(c) for c in cams]:
            self.camera_popup.selectItemWithTitle_(preferred)
        elif cams:
            self.camera_popup.selectItemAtIndex_(0)
        if not cams:
            self.log('No cameras found')
        else:
            if initial:
                self.on_start(auto=True)

    # -------------- Actions --------------
    def on_refresh(self, _sender):
        if self.worker:
            self.on_stop(None)
        self.refresh_cameras(initial=False)

    def on_start(self, auto=False):
        if self.worker and self.worker.is_alive():
            return
        selected = self.camera_popup.titleOfSelectedItem()
        if not selected:
            self.log('Select a camera')
            return
        try:
            port = int(self.port_field.stringValue())
            if port < 1 or port > 65535:
                raise ValueError
        except Exception:
            self.log('Invalid port')
            return
        self.cfg['preferred_source'] = selected
        save_config(self.cfg)
        self.stop_event.clear()
        self.start_btn.setEnabled_(False)
        self.stop_btn.setEnabled_(True)
        self.log(f'Starting camera {selected} -> 127.0.0.1:{port}')
        def worker():
            run_detection(self.stop_event, selected, host='127.0.0.1', port=port, status_callback=self.log)
        self.worker = threading.Thread(target=worker, daemon=True)
        self.worker.start()

    def on_stop(self, _sender):
        if not self.worker:
            return
        self.stop_event.set()
        self.worker.join(timeout=3)
        self.start_btn.setEnabled_(True)
        self.stop_btn.setEnabled_(False)
        self.log('Stopped')

    def on_quit(self, _sender):
        try:
            self.on_stop(None)
        finally:
            NSApp().terminate_(None)


def main():
    app = NSApplication.sharedApplication()
    app.setActivationPolicy_(NSApplicationActivationPolicyRegular)
    controller = Controller.alloc().init()

    # Force front
    NSRunningApplication.currentApplication().activateWithOptions_(NSApplicationActivateIgnoringOtherApps)

    app.run()

if __name__ == '__main__':
    try:
        main()
    except Exception:
        traceback.print_exc()
        raise
