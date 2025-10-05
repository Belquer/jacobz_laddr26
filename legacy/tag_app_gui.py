#!/usr/bin/env python3
"""Minimal GUI launcher for AprilTag2Max.

Features:
 - Dropdown: Select camera index (probed 0..N)
 - Entry: OSC port (defaults 8000)
 - Start/Stop toggling (auto starts when selection made if not running)
 - Status label updates
 - Quit button (also standard window close)

Uses the reusable run_detection() from apriltag2max.py in a background thread.
No preview window; purely headless detection with OSC output.
"""
import threading, tkinter as tk, tkinter.ttk as ttk, queue, time
import sys
import argparse
import platform

from apriltag2max import probe_cameras, run_detection, load_config, save_config

DEFAULT_PORT = 8000

class App:
    def __init__(self, root):
        self.root = root
        root.title("AprilTag2Max")
        root.geometry("340x220")
        root.protocol("WM_DELETE_WINDOW", self.on_quit)

        self.stop_event = threading.Event()
        self.worker = None
        self.msg_q = queue.Queue()

        self.cfg = load_config()
        self.preferred_source = self.cfg.get('preferred_source')

        self._build_ui()
        self.refresh_cameras(initial=True)
        self._poll_msgs()

    def _build_ui(self):
        pad = {'padx':6, 'pady':4}
        frm = ttk.Frame(self.root)
        frm.pack(fill='both', expand=True)

        # Camera selection
        ttk.Label(frm, text="Select Camera:").grid(row=0, column=0, sticky='w', **pad)
        self.camera_var = tk.StringVar()
        self.camera_cb = ttk.Combobox(frm, textvariable=self.camera_var, state='readonly', width=24)
        self.camera_cb.grid(row=0, column=1, sticky='ew', **pad)
        self.camera_cb.bind('<<ComboboxSelected>>', self.on_camera_selected)

        self.refresh_btn = ttk.Button(frm, text="↻", width=3, command=self.refresh_cameras)
        self.refresh_btn.grid(row=0, column=2, **pad)

        # OSC Port
        ttk.Label(frm, text="OSC Port:").grid(row=1, column=0, sticky='w', **pad)
        self.port_var = tk.StringVar(value=str(DEFAULT_PORT))
        self.port_entry = ttk.Entry(frm, textvariable=self.port_var, width=8)
        self.port_entry.grid(row=1, column=1, sticky='w', **pad)

        # Control buttons
        self.start_btn = ttk.Button(frm, text="Start", command=self.start_detection)
        self.start_btn.grid(row=2, column=0, **pad)
        self.stop_btn = ttk.Button(frm, text="Stop", command=self.stop_detection, state='disabled')
        self.stop_btn.grid(row=2, column=1, sticky='w', **pad)
        self.quit_btn = ttk.Button(frm, text="Quit", command=self.on_quit)
        self.quit_btn.grid(row=2, column=2, **pad)

        # Status
        ttk.Label(frm, text="Status:").grid(row=3, column=0, sticky='nw', **pad)
        self.status_text = tk.StringVar(value="Idle")
        self.status_lbl = ttk.Label(frm, textvariable=self.status_text, wraplength=250, anchor='w', justify='left')
        self.status_lbl.grid(row=3, column=1, columnspan=2, sticky='w', **pad)

        frm.columnconfigure(1, weight=1)

    def log(self, msg):
        self.msg_q.put(msg)

    def _poll_msgs(self):
        try:
            while True:
                msg = self.msg_q.get_nowait()
                self.status_text.set(msg)
        except queue.Empty:
            pass
        self.root.after(200, self._poll_msgs)

    def refresh_cameras(self, initial=False):
        cams = probe_cameras(limit=8)
        items = [f"{idx}" for idx in cams]
        self.camera_cb['values'] = items
        if initial:
            # Try preferred
            if self.preferred_source and self.preferred_source.isdigit() and self.preferred_source in items:
                self.camera_var.set(self.preferred_source)
            elif items:
                self.camera_var.set(items[0])
        if not items:
            self.status_text.set("No cameras found")
        else:
            if initial and self.camera_var.get():
                # Auto start
                self.start_detection(auto=True)

    def on_camera_selected(self, _evt=None):
        # Restart if running
        if self.worker and self.worker.is_alive():
            self.stop_detection(wait=True)
            self.root.after(300, lambda: self.start_detection())
        else:
            self.start_detection()

    def start_detection(self, auto=False):
        if self.worker and self.worker.is_alive():
            return
        cam = self.camera_var.get().strip()
        if not cam:
            self.status_text.set("Select a camera first")
            return
        # Validate port
        try:
            port = int(self.port_var.get())
            if not (1 <= port <= 65535):
                raise ValueError
        except ValueError:
            self.status_text.set("Invalid port")
            return
        self.cfg['preferred_source'] = cam
        save_config(self.cfg)
        self.stop_event.clear()
        self.start_btn['state'] = 'disabled'
        self.stop_btn['state'] = 'normal'
        self.status_text.set(f"Starting camera {cam} -> 127.0.0.1:{port}")
        def worker():
            run_detection(self.stop_event, cam, host='127.0.0.1', port=port,
                          status_callback=self.log)
        self.worker = threading.Thread(target=worker, daemon=True)
        self.worker.start()

    def stop_detection(self, wait=False):
        if not self.worker:
            return
        self.stop_event.set()
        if wait:
            self.worker.join(timeout=3)
        self.start_btn['state'] = 'normal'
        self.stop_btn['state'] = 'disabled'
        self.status_text.set("Stopped")

    def on_quit(self):
        self.stop_detection(wait=True)
        self.root.after(100, self.root.destroy)


def main():
    if platform.system() != 'Darwin':
        # Still works cross-platform, but primary target is macOS .app.
        pass
    root = tk.Tk()
    App(root)
    root.mainloop()

if __name__ == '__main__':
    main()
