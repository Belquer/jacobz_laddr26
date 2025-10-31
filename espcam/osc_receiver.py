from pythonosc import dispatcher
from pythonosc import osc_server
import time

def apriltag_handler(address, *args):
    print(f"🏷️  FULL: {address} {args}")

def tag_id_handler(address, *args):
    print(f"   ID: {args[0]}")

def tag_position_handler(address, *args):
    print(f"   POSITION: ({args[0]:.3f}, {args[1]:.3f})")

def tag_confidence_handler(address, *args):
    print(f"   CONFIDENCE: {args[0]:.1f}")

def main():
    dispatcher = dispatcher.Dispatcher()
    dispatcher.map("/apriltag", apriltag_handler)
    dispatcher.map("/tag/id", tag_id_handler)
    dispatcher.map("/tag/position", tag_position_handler)
    dispatcher.map("/tag/confidence", tag_confidence_handler)
    
    server = osc_server.ThreadingOSCUDPServer(("127.0.0.1", 8000), dispatcher)
    print("🎵 OSC Receiver started on 127.0.0.1:8000")
    print("📡 Waiting for AprilTag messages...")
    print("=====================================")
    
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n👋 OSC Receiver stopped")

if __name__ == "__main__":
    main()