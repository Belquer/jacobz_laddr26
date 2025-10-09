#include <Arduino.h>
#include "esp_camera.h"
#include <WiFi.h>

// ===================
// Select camera model
// ===================
//#define CAMERA_MODEL_WROVER_KIT
//#define CAMERA_MODEL_AI_THINKER
#define CAMERA_MODEL_XIAO_ESP32S3
#include "camera_pins.h"

// ===========================
// WiFi credentials
// ===========================
const char* ssid     = "BELQUER_FRIEND";
const char* password = "welcometothejungle!";

void startCameraServer();
void setupLedFlash(int pin);

static void connectWiFiWithAPFallback() {
  Serial.println("Connecting WiFi (STA)…");

  // --- Scan nearby 2.4 GHz networks ---
  Serial.println("Scanning for Wi-Fi...");
  int n = WiFi.scanNetworks(false, true);
  if (n <= 0) {
    Serial.println("No networks found.");
  } else {
    for (int i = 0; i < n; ++i) {
      wifi_auth_mode_t auth = WiFi.encryptionType(i);
      Serial.printf("[%2d] SSID:%s  RSSI:%d  CH:%d  ENC:%d\n",
                    i,
                    WiFi.SSID(i).c_str(),
                    WiFi.RSSI(i),
                    WiFi.channel(i),
                    (int)auth);
    }
  }
  Serial.println("Scan done.\n");

  WiFi.persistent(false);
  WiFi.mode(WIFI_STA);
  WiFi.disconnect(true, true);
  delay(200);

  WiFi.setSleep(false);
  WiFi.begin(ssid, password);

  Serial.printf("STA MAC: %s\n", WiFi.macAddress().c_str());

  unsigned long t0 = millis();
  wl_status_t last = (wl_status_t)(-1);
  while (WiFi.status() != WL_CONNECTED && millis() - t0 < 20000) {
    wl_status_t s = WiFi.status();
    if (s != last) {
      Serial.printf("\nWiFi status changed: %d\n", (int)s);
      #ifdef ARDUINO_ESP32_RELEASE
      #if ARDUINO_ESP32_RELEASE >= 30000
      Serial.printf("Reason: %d\n", (int)WiFi.reasonCode());
      #endif
      #endif
      last = s;
    }
    delay(500);
    Serial.print(".");
  }

  if (WiFi.status() == WL_CONNECTED) {
    Serial.printf("\nWiFi connected! IP: %s\n", WiFi.localIP().toString().c_str());
  } else {
    // Fallback AP
    const char* ap_ssid = "ESP32-CAM";
    const char* ap_pass = "12345678";
    WiFi.mode(WIFI_AP);
    WiFi.softAP(ap_ssid, ap_pass);
    IPAddress apIP = WiFi.softAPIP();
    Serial.printf("\nSTA connect failed. Started AP \"%s\" (pass: %s)\n", ap_ssid, ap_pass);
    Serial.printf("Connect to: http://%s/\n", apIP.toString().c_str());
  }
}

void setup() {
  Serial.begin(115200);
  Serial.setDebugOutput(true);
  Serial.println();

  camera_config_t config;
  config.ledc_channel = LEDC_CHANNEL_0;
  config.ledc_timer   = LEDC_TIMER_0;
  config.pin_d0       = Y2_GPIO_NUM;
  config.pin_d1       = Y3_GPIO_NUM;
  config.pin_d2       = Y4_GPIO_NUM;
  config.pin_d3       = Y5_GPIO_NUM;
  config.pin_d4       = Y6_GPIO_NUM;
  config.pin_d5       = Y7_GPIO_NUM;
  config.pin_d6       = Y8_GPIO_NUM;
  config.pin_d7       = Y9_GPIO_NUM;
  config.pin_xclk     = XCLK_GPIO_NUM;
  config.pin_pclk     = PCLK_GPIO_NUM;
  config.pin_vsync    = VSYNC_GPIO_NUM;
  config.pin_href     = HREF_GPIO_NUM;
  config.pin_sccb_sda = SIOD_GPIO_NUM;
  config.pin_sccb_scl = SIOC_GPIO_NUM;
  config.pin_pwdn     = PWDN_GPIO_NUM;
  config.pin_reset    = RESET_GPIO_NUM;
  config.xclk_freq_hz = 20000000;
  config.frame_size   = FRAMESIZE_UXGA;
  config.pixel_format = PIXFORMAT_JPEG;
  config.grab_mode    = CAMERA_GRAB_WHEN_EMPTY;
  config.fb_location  = CAMERA_FB_IN_PSRAM;
  config.jpeg_quality = 12;
  config.fb_count     = 1;

  if (config.pixel_format == PIXFORMAT_JPEG) {
    if (psramFound()) {
      config.jpeg_quality = 10;
      config.fb_count     = 2;
      config.grab_mode    = CAMERA_GRAB_LATEST;
    } else {
      config.frame_size  = FRAMESIZE_SVGA;
      config.fb_location = CAMERA_FB_IN_DRAM;
    }
  } else {
    config.frame_size = FRAMESIZE_240X240;
  #if CONFIG_IDF_TARGET_ESP32S3
    config.fb_count = 2;
  #endif
  }

  esp_err_t err = esp_camera_init(&config);
  if (err != ESP_OK) {
    Serial.printf("Camera init failed with error 0x%x\n", err);
    return;
  }

  sensor_t * s = esp_camera_sensor_get();
  if (s->id.PID == OV3660_PID) {
    s->set_vflip(s, 1);
    s->set_brightness(s, 1);
    s->set_saturation(s, -2);
  }
  if (config.pixel_format == PIXFORMAT_JPEG) {
    s->set_framesize(s, FRAMESIZE_QVGA);
  }

#if defined(LED_GPIO_NUM)
  setupLedFlash(LED_GPIO_NUM);
#endif

  connectWiFiWithAPFallback();
  startCameraServer();

  if (WiFi.getMode() == WIFI_STA && WiFi.status() == WL_CONNECTED)
    Serial.printf("Camera Ready! http://%s/\n", WiFi.localIP().toString().c_str());
  else
    Serial.printf("Camera Ready on AP! http://%s/\n", WiFi.softAPIP().toString().c_str());
}

void loop() {
  delay(10000);
}