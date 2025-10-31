#!/usr/bin/env python3
import cv2
import numpy as np
import requests
from pythonosc import udp_client
import pupil_apriltags as apriltag
import time
import sys

def main():
    print("🚀 ESP32-CAM AprilTag Detector")
    print("=====================================")
    print("📡 Make sure you're connected to 'ESP32-CAM-AP' WiFi")
    print("🎯 Hold AprilTags in front of the camera")
    print("⏹️  Press 'q' to quit")
    print("=====================================\n")
    
    esp32_ip = "192.168.4.1"
    stream_url = f"http://{esp32_ip}/stream"
    
    # OSC client
    osc_client = udp_client.SimpleUDPClient("127.0.0.1", 8000)
    
    # AprilTag detector
    detector = apriltag.Detector()
    
    print("📹 Connecting to ESP32-CAM...")
    
    try:
        response = requests.get(stream_url, stream=True, timeout=10)
        bytes_data = bytes()
        frame_count = 0
        
        print("✅ Connected! Starting detection...")
        
        for chunk in response.iter_content(chunk_size=1024):
            bytes_data += chunk
            a = bytes_data.find(b'\xff\xd8')
            b = bytes_data.find(b'\xff\xd9')
            
            if a != -1 and b != -1:
                jpg_data = bytes_data[a:b+2]
                bytes_data = bytes_data[b+2:]
                
                nparr = np.frombuffer(jpg_data, np.uint8)
                frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
                
                if frame is not None:
                    # Detect AprilTags
                    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
                    results = detector.detect(gray)
                    
                    # Clear previous frame
                    display_frame = frame.copy()
                    
                    if len(results) > 0:
                        print(f"📊 Frame {frame_count}: {len(results)} tag(s) detected")
                        
                    for result in results:
                        if result.decision_margin > 20:
                            height, width = frame.shape[:2]
                            center_x = result.center[0] / width
                            center_y = result.center[1] / height
                            
                            # Send OSC
                            osc_client.send_message("/apriltag", [
                                result.tag_id, center_x, center_y, result.decision_margin
                            ])
                            
                            print(f"   📍 Tag {result.tag_id} at ({center_x:.3f}, {center_y:.3f}) conf: {result.decision_margin:.1f}")
                            
                            # Draw on frame
                            corners = result.corners.astype(int)
                            for i in range(4):
                                cv2.line(display_frame, tuple(corners[i]), tuple(corners[(i+1)%4]), (0,255,0), 2)
                            cv2.circle(display_frame, tuple(result.center.astype(int)), 5, (0,0,255), -1)
                            cv2.putText(display_frame, f"ID: {result.tag_id}", 
                                      (corners[0][0], corners[0][1] - 10),
                                      cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 0, 0), 2)
                            cv2.putText(display_frame, f"Conf: {result.decision_margin:.1f}", 
                                      (corners[0][0], corners[0][1] - 30),
                                      cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 1)
                    
                    cv2.imshow('ESP32-CAM AprilTag Detection - Press Q to quit', display_frame)
                    frame_count += 1
                    
                    if cv2.waitKey(1) & 0xFF == ord('q'):
                        print("\n🛑 Stopping detection...")
                        break
                        
    except requests.exceptions.ConnectionError:
        print("❌ Cannot connect to ESP32-CAM")
        print("💡 Make sure:")
        print("   1. ESP32-CAM is powered on")
        print("   2. You're connected to 'ESP32-CAM-AP' WiFi")
        print("   3. The camera is working in browser: http://192.168.4.1")
        input("Press Enter to close...")
    except Exception as e:
        print(f"❌ Error: {e}")
        input("Press Enter to close...")
    finally:
        cv2.destroyAllWindows()
        print("👋 Application closed")

if __name__ == "__main__":
    main()