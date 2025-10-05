#!/usr/bin/env python3
"""Cocoa GUI v2 for AprilTag2Max (Version 2.0.0).
Adds explicit macOS menu bar with Quit command.
"""
import sys, threading, traceback, os, datetime
import objc
from objc import python_method
from Foundation import NSObject, NSAutoreleasePool
from AppKit import (
    NSApplication, NSApp, NSWindow, NSButton, NSTextField, NSPopUpButton,
    NSView, NSMakeRect, NSApplicationActivationPolicyRegular,
    NSRunningApplication, NSApplicationActivateIgnoringOtherApps,
    NSMenu, NSMenuItem
)
from apriltag2max import probe_cameras, run_detection, load_config, save_config

DEFAULT_PORT = 8000
WINDOW_W, WINDOW_H = 380, 250

class AppController(NSObject):
    def init(self):
        self = objc.super(AppController, self).init()
        if self is None:
            return None
        self.stop_event = threading.Event()
        self.worker = None
        self.cfg = load_config()
        self.status_lines = []
        self.build_menu()
        self.build_window()
        self.refresh_cameras(initial=True)
        return self

    # Menu bar -------------------------------------------------
    def build_menu(self):
        main_menu = NSMenu.alloc().init()

        app_menu_item = NSMenuItem.alloc().init()
        main_menu.addItem_(app_menu_item)

        app_menu = NSMenu.alloc().init()

        quit_item = NSMenuItem.alloc().initWithTitle_action_keyEquivalent_(
            "Quit AprilTag2Max 2.0", objc.selector(self.quit_, signature=b'v@:@'), 'q')
        app_menu.addItem_(quit_item)

        app_menu_item.setSubmenu_(app_menu)
        NSApp().setMainMenu_(main_menu)

    # Window ---------------------------------------------------
    def build_window(self):
        style =  (1 << 0) | (1 << 1) | (1 << 3)  # titled, closable, miniaturizable
        self.window = NSWindow.alloc().initWithContentRect_styleMask_backing_defer_(
            NSMakeRect(0,0,WINDOW_W,WINDOW_H), style, 2, False)
        self.window.setTitle_("AprilTag2Max 2.0")
        self.window.center()
        content = self.window.contentView()

        y = WINDOW_H - 55
        self.camera_label = NSTextField.alloc().initWithFrame_(NSMakeRect(20, y, 120, 20))
        self._label_style(self.camera_label, "Camera:")
        content.addSubview_(self.camera_label)

        self.camera_popup = NSPopUpButton.alloc().initWithFrame_pullsDown_(NSMakeRect(110, y-2, 170, 26), False)
        content.addSubview_(self.camera_popup)

        self.refresh_btn = NSButton.alloc().initWithFrame_(NSMakeRect(290, y-2, 70, 26))
        self.refresh_btn.setTitle_("Refresh")
        self.refresh_btn.setTarget_(self)
        self.refresh_btn.setAction_(objc.selector(self.refresh_, signature=b'v@:@'))
        content.addSubview_(self.refresh_btn)

        y -= 48
        self.port_label = NSTextField.alloc().initWithFrame_(NSMakeRect(20, y, 120, 20))
        self._label_style(self.port_label, "OSC Port:")
        content.addSubview_(self.port_label)

        self.port_field = NSTextField.alloc().initWithFrame_(NSMakeRect(110, y-2, 80, 24))
        self.port_field.setStringValue_(str(DEFAULT_PORT))
        content.addSubview_(self.port_field)

        y -= 55
        self.start_btn = NSButton.alloc().initWithFrame_(NSMakeRect(20, y, 80, 30))
        self.start_btn.setTitle_("Start")
        self.start_btn.setTarget_(self)
        self.start_btn.setAction_(objc.selector(self.start_, signature=b'v@:@'))
        content.addSubview_(self.start_btn)

        self.stop_btn = NSButton.alloc().initWithFrame_(NSMakeRect(110, y, 80, 30))
        self.stop_btn.setTitle_("Stop")
        self.stop_btn.setTarget_(self)
        self.stop_btn.setAction_(objc.selector(self.stop_, signature=b'v@:@'))
        self.stop_btn.setEnabled_(False)
        content.addSubview_(self.stop_btn)

        self.quit_btn = NSButton.alloc().initWithFrame_(NSMakeRect(200, y, 80, 30))
        self.quit_btn.setTitle_("Quit")
        self.quit_btn.setTarget_(self)
        self.quit_btn.setAction_(objc.selector(self.quit_, signature=b'v@:@'))
        content.addSubview_(self.quit_btn)

        self.status_field = NSTextField.alloc().initWithFrame_(NSMakeRect(20, 20, WINDOW_W-40, 80))
        self.status_field.setBezeled_(True)
        self.status_field.setEditable_(False)
        self.status_field.setDrawsBackground_(True)
        self.status_field.setStringValue_("Idle")
        content.addSubview_(self.status_field)

        self.window.makeKeyAndOrderFront_(None)

    def _label_style(self, tf, text):
        tf.setStringValue_(text)
        tf.setBezeled_(False)
        tf.setEditable_(False)
        tf.setDrawsBackground_(False)

    # -------- Logging & camera handling ----------
    # Internal Python-only logging helper (named with underscore to avoid
    # colliding with any Objective-C selectors / NSObject methods).
    @python_method
    def _log(self, msg):
        self.status_lines.append(msg)
        self.status_lines = self.status_lines[-6:]
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
            self._log('No cameras found')
        else:
            if initial:
                self.start_(None)

    # -------- Actions ---------
    def refresh_(self, sender):
        if self.worker:
            self.stop_(None)
        self.refresh_cameras(initial=False)

    def start_(self, sender):
        if self.worker and self.worker.is_alive():
            return
        selected = self.camera_popup.titleOfSelectedItem()
        if not selected:
            self._log('Select a camera.')
            return
        try:
            port = int(self.port_field.stringValue())
            if port < 1 or port > 65535:
                raise ValueError
        except Exception:
            self._log('Invalid port')
            return
        self.cfg['preferred_source'] = selected
        save_config(self.cfg)
        self.stop_event.clear()
        self.start_btn.setEnabled_(False)
        self.stop_btn.setEnabled_(True)
        self._log(f'Start camera {selected} -> 127.0.0.1:{port}')
        def worker():
            run_detection(self.stop_event, selected, host='127.0.0.1', port=port, status_callback=self._log)
        self.worker = threading.Thread(target=worker, daemon=True)
        self.worker.start()

    def stop_(self, sender):
        if not self.worker:
            return
        self.stop_event.set()
        self.worker.join(timeout=3)
        self.start_btn.setEnabled_(True)
        self.stop_btn.setEnabled_(False)
        self._log('Stopped')

    def quit_(self, sender):
        try:
            self.stop_(None)
        finally:
            NSApp().terminate_(None)


def main():
    # Setup logging to a file inside user's home (fallback to current dir)
    try:
        log_dir = os.path.expanduser('~/.apriltag2max')
        os.makedirs(log_dir, exist_ok=True)
        logfile = os.path.join(log_dir, 'gui_v2.log')
        with open(logfile, 'a') as f:
            f.write(f"\n--- Launch {datetime.datetime.now().isoformat()} ---\n")
        # Redirect stdout/stderr so Finder launches capture output
        sys.stdout = open(logfile, 'a', buffering=1)
        sys.stderr = sys.stdout
        print('Starting AprilTag2Max 2.0 GUI (logging active)')
    except Exception as e:
        # Last resort minimal print (may go nowhere if Finder launch)
        pass
    app = NSApplication.sharedApplication()
    app.setActivationPolicy_(NSApplicationActivationPolicyRegular)
    controller = AppController.alloc().init()
    NSRunningApplication.currentApplication().activateWithOptions_(NSApplicationActivateIgnoringOtherApps)
    app.run()

if __name__ == '__main__':
    try:
        main()
    except Exception:
        traceback.print_exc()
        raise
