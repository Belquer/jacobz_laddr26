import cv2
import numpy as np
import requests
from pythonosc import udp_client
import pupil_apriltags as apriltag
import time
import socket

class ESP32CamAPDetector:
    def __init__(self, esp32_ip='192.168.4.1', osc_ip='127.0.0.1', osc_port=8000):
        self.esp32_ip = esp32_ip
        self.stream_url = f"http://{esp32_ip}/stream"
        self.snapshot_url = f"http://{esp32_ip}/snapshot"
        self.status_url = f"http://{esp32_ip}/status"
        
        # OSC client
        self.osc_client = udp_client.SimpleUDPClient(osc_ip, osc_port)
        
        # AprilTag detector
        self.detector = apriltag.Detector()
        
        # Detection settings
        self.min_confidence = 20.0
        self.running = False
        
        print("🚀 ESP32-CAM AprilTag Detector")
        print("=====================================")
        
    def check_connection(self):
        """Test connection to ESP32-CAM with shorter timeout"""
        print("🔍 Testing connection to ESP32-CAM...")
        try:
            # First try a simple socket connection
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(3)
            result = sock.connect_ex((self.esp32_ip, 80))
            sock.close()
            
            if result == 0:
                print(f"✅ Socket connection to {self.esp32_ip}:80 successful")
                
                # Now try HTTP with shorter timeout
                response = requests.get(f"http://{self.esp32_ip}/", timeout=3)
                if response.status_code == 200:
                    print("✅ HTTP connection successful")
                    return True
                else:
                    print(f"⚠️  HTTP returned status: {response.status_code}")
                    return True  # Still proceed if socket works
            else:
                print(f"❌ Cannot reach {self.esp32_ip} on port 80")
                return False
                
        except requests.exceptions.Timeout:
            print("⚠️  HTTP timeout, but socket connection works. Continuing...")
            return True
        except Exception as e:
            print(f"⚠️  Connection issue: {e}")
            print("But since browser works, let's try streaming directly...")
            return True
    
    def start_detection_direct(self):
        """Start detection without initial connection test"""
        print("\n🎯 Starting AprilTag Detection System")
        print("=====================================")
        print("📹 Starting video stream directly...")
        print("   Hold AprilTags in front of the camera")
        print("   Press 'q' to quit detection")
        print("   Press 's' for single snapshot mode")
        print("=====================================\n")
        
        self.running = True
        self._run_detection_loop()
        
    def _run_detection_loop(self):
        """Main detection loop with better error handling"""
        retry_count = 0
        max_retries = 3
        
        while self.running and retry_count < max_retries:
            try:
                print(f"🔄 Connecting to stream (attempt {retry_count + 1}/{max_retries})...")
                
                # Use shorter timeout for stream connection
                response = requests.get(self.stream_url, stream=True, timeout=5)
                
                if response.status_code == 200:
                    print("✅ Stream connected successfully!")
                    retry_count = 0  # Reset retry count on success
                    self._process_stream(response)
                else:
                    print(f"❌ Stream HTTP error: {response.status_code}")
                    retry_count += 1
                    
            except requests.exceptions.Timeout:
                print("⏰ Stream connection timeout")
                retry_count += 1
            except requests.exceptions.ConnectionError:
                print("🔌 Stream connection error")
                retry_count += 1
            except Exception as e:
                print(f"❌ Stream error: {e}")
                retry_count += 1
            
            if retry_count < max_retries:
                print(f"🔄 Retrying in 2 seconds...")
                time.sleep(2)
        
        if retry_count >= max_retries:
            print("❌ Failed to connect after multiple attempts")
    
    def _process_stream(self, response):
        """Process the MJPEG stream"""
        bytes_data = bytes()
        frame_count = 0
        fps_time = time.time()
        
        try:
            for chunk in response.iter_content(chunk_size=1024):
                if not self.running:
                    break
                    
                bytes_data += chunk
                a = bytes_data.find(b'\xff\xd8')  # JPEG start
                b = bytes_data.find(b'\xff\xd9')  # JPEG end
                
                if a != -1 and b != -1:
                    jpg_data = bytes_data[a:b+2]
                    bytes_data = bytes_data[b+2:]
                    
                    # Decode JPEG
                    nparr = np.frombuffer(jpg_data, np.uint8)
                    frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
                    
                    if frame is not None:
                        # Process frame
                        self._process_frame(frame, frame_count)
                        frame_count += 1
                        
                        # Calculate FPS every 30 frames
                        if frame_count % 30 == 0:
                            fps = 30 / (time.time() - fps_time)
                            fps_time = time.time()
                            print(f"📊 FPS: {fps:.1f} | Frames: {frame_count}")
                        
                        # Handle key presses
                        key = cv2.waitKey(1) & 0xFF
                        if key == ord('q'):
                            print("\n🛑 Stopping detection...")
                            self.running = False
                            break
                        elif key == ord('s'):
                            self._snapshot_mode()
                
        except Exception as e:
            print(f"❌ Stream processing error: {e}")
    
    def _process_frame(self, frame, frame_count):
        """Process a single frame for AprilTag detection"""
        # Convert to grayscale for detection
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        
        # Detect AprilTags
        results = self.detector.detect(gray)
        
        # Create display frame
        display_frame = frame.copy()
        
        # Add frame info to display
        cv2.putText(display_frame, f"Frame: {frame_count}", (10, 30),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 255), 2)
        cv2.putText(display_frame, f"Tags: {len(results)}", (10, 60),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 255), 2)
        
        if len(results) > 0:
            print(f"📊 Frame {frame_count}: Detected {len(results)} tag(s)")
            
        for result in results:
            if result.decision_margin > self.min_confidence:
                self._send_osc_data(result, frame.shape)
                self._draw_detection(display_frame, result)
        
        # Display frame
        cv2.imshow('ESP32-CAM AprilTag Detection | Q:Quit S:Snapshot', display_frame)
    
    def _send_osc_data(self, result, frame_shape):
        """Send AprilTag data via OSC"""
        height, width = frame_shape[:2]
        center_x = result.center[0] / width
        center_y = result.center[1] / height
        
        # Send comprehensive OSC data
        self.osc_client.send_message("/apriltag", [
            result.tag_id,
            center_x,
            center_y,
            result.decision_margin
        ])
        
        print(f"   📍 Tag {result.tag_id} at ({center_x:.3f}, {center_y:.3f}) conf: {result.decision_margin:.1f}")
    
    def _draw_detection(self, frame, result):
        """Draw detection visualization on frame"""
        corners = result.corners.astype(int)
        
        # Draw bounding box
        for i in range(4):
            cv2.line(frame, tuple(corners[i]), tuple(corners[(i+1)%4]), 
                    (0, 255, 0), 3)
        
        # Draw center point
        center = tuple(result.center.astype(int))
        cv2.circle(frame, center, 8, (0, 0, 255), -1)
        cv2.circle(frame, center, 12, (255, 255, 255), 2)
        
        # Draw tag ID and confidence
        cv2.putText(frame, f"ID: {result.tag_id}", 
                  (corners[0][0], corners[0][1] - 25),
                  cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 0), 2)
        cv2.putText(frame, f"Conf: {result.decision_margin:.1f}", 
                  (corners[0][0], corners[0][1] - 5),
                  cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 0), 1)
    
    def _snapshot_mode(self):
        """Switch to single snapshot mode"""
        print("\n📸 Switching to snapshot mode...")
        try:
            response = requests.get(self.snapshot_url, timeout=5)
            nparr = np.frombuffer(response.content, np.uint8)
            frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
            
            if frame is not None:
                gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
                results = self.detector.detect(gray)
                
                print(f"📷 Snapshot: {len(results)} tag(s) detected")
                for result in results:
                    if result.decision_margin > self.min_confidence:
                        self._send_osc_data(result, frame.shape)
                        self._draw_detection(frame, result)
                
                cv2.imshow('Snapshot Mode - Press any key to continue', frame)
                print("   Press any key to return to stream mode...")
                cv2.waitKey(0)
                cv2.destroyWindow('Snapshot Mode - Press any key to continue')
                
        except Exception as e:
            print(f"❌ Snapshot failed: {e}")
    
    def stop_detection(self):
        """Stop the detection system"""
        self.running = False
        cv2.destroyAllWindows()

def main():
    # ESP32-CAM Access Point IP
    ESP32_IP = "192.168.4.1"
    
    # OSC settings
    OSC_IP = "127.0.0.1"
    OSC_PORT = 8000
    
    # Create detector
    detector = ESP32CamAPDetector(ESP32_IP, OSC_IP, OSC_PORT)
    
    try:
        # Skip initial connection test and go directly to streaming
        detector.start_detection_direct()
        
    except KeyboardInterrupt:
        print("\n🛑 Stopped by user")
    except Exception as e:
        print(f"❌ Unexpected error: {e}")
    finally:
        detector.stop_detection()
        print("👋 Detection system stopped")

if __name__ == "__main__":
    main()