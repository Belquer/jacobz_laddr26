#include <Arduino.h>
#include "esp_camera.h"
#include "esp_http_server.h"
#include "img_converters.h"
#include "fb_gfx.h"
#include "esp_timer.h"
#include "driver/ledc.h"

#ifndef LED_LEDC_MODE
#define LED_LEDC_MODE   LEDC_LOW_SPEED_MODE
#endif
#ifndef LED_LEDC_TIMER
#define LED_LEDC_TIMER  LEDC_TIMER_0
#endif
#ifndef LED_LEDC_CHANNEL
#define LED_LEDC_CHANNEL 0
#endif

static uint8_t __ledc_res_bits = 8;

static inline void ledcSetup_CH(uint8_t, double freq_hz, uint8_t res_bits) {
  __ledc_res_bits = res_bits;
  ledc_timer_config_t t = {
    .speed_mode       = LED_LEDC_MODE,
    .duty_resolution  = (ledc_timer_bit_t)res_bits,
    .timer_num        = LED_LEDC_TIMER,
    .freq_hz          = (uint32_t)freq_hz,
    .clk_cfg          = LEDC_AUTO_CLK
  };
  ledc_timer_config(&t);
}

static inline void ledcAttachPin_CH(int pin, uint8_t channel) {
  ledc_channel_config_t c = {
    .gpio_num   = (gpio_num_t)pin,
    .speed_mode = LED_LEDC_MODE,
    .channel    = (ledc_channel_t)channel,
    .intr_type  = LEDC_INTR_DISABLE,
    .timer_sel  = LED_LEDC_TIMER,
    .duty       = 0,
    .hpoint     = 0
  };
  ledc_channel_config(&c);
}

static inline void ledcWrite_CH(uint8_t channel, uint32_t duty_raw) {
  const uint32_t maxduty = (1u << __ledc_res_bits) - 1u;
  if (duty_raw > maxduty) duty_raw = maxduty;
  ledc_set_duty(LED_LEDC_MODE, (ledc_channel_t)channel, duty_raw);
  ledc_update_duty(LED_LEDC_MODE, (ledc_channel_t)channel);
}

#define ledcSetup(CH, FREQ, RES) ledcSetup_CH((CH), (FREQ), (RES))
#define ledcAttachPin(PIN, CH)   ledcAttachPin_CH((PIN), (CH))
#define ledcWrite(CH, DUTY)      ledcWrite_CH((CH), (DUTY))

void setupLedFlash(int pin) {
  ledcSetup(LED_LEDC_CHANNEL, 5000, 8);
  ledcAttachPin(pin, LED_LEDC_CHANNEL);
  ledcWrite(LED_LEDC_CHANNEL, 0);
}

static httpd_handle_t camera_httpd = nullptr;

// --- index page ---
static esp_err_t index_handler(httpd_req_t *req) {
  static const char PROGMEM html[] =
    "<!doctype html><html><head><meta name=viewport content='width=device-width,initial-scale=1'>"
    "<title>ESP32-CAM</title></head><body>"
    "<h2>ESP32-CAM</h2>"
    "<p><a href='/jpg'>Single JPEG</a> | <a href='/stream' target=_blank>Stream in new tab</a></p>"
    "<img src='/stream' style='max-width:100%;height:auto;border:1px solid #ccc'>"
    "</body></html>";
  httpd_resp_set_type(req, "text/html");
  return httpd_resp_send(req, html, HTTPD_RESP_USE_STRLEN);
}

// --- single frame ---
static esp_err_t jpg_handler(httpd_req_t *req) {
  camera_fb_t *fb = esp_camera_fb_get();
  if (!fb) return httpd_resp_send_500(req);

  httpd_resp_set_type(req, "image/jpeg");
  esp_err_t res = httpd_resp_send(req, (const char*)fb->buf, fb->len);
  esp_camera_fb_return(fb);
  return res;
}

// --- stream handler ---
static const char* _STREAM_CONTENT_TYPE = "multipart/x-mixed-replace; boundary=frame";
static const char* _STREAM_BOUNDARY     = "\r\n--frame\r\n";
static const char* _STREAM_PART         = "Content-Type: image/jpeg\r\nContent-Length: %u\r\n\r\n";

static esp_err_t stream_handler(httpd_req_t *req) {
  esp_err_t res = httpd_resp_set_type(req, _STREAM_CONTENT_TYPE);
  if (res != ESP_OK) return res;

  while (true) {
    camera_fb_t *fb = esp_camera_fb_get();
    if (!fb) return ESP_FAIL;
    res = httpd_resp_send_chunk(req, _STREAM_BOUNDARY, strlen(_STREAM_BOUNDARY));
    if (res != ESP_OK) { esp_camera_fb_return(fb); return res; }

    char part_buf[64];
    int hlen = snprintf(part_buf, sizeof(part_buf), _STREAM_PART, fb->len);
    res = httpd_resp_send_chunk(req, part_buf, hlen);
    if (res != ESP_OK) { esp_camera_fb_return(fb); return res; }

    res = httpd_resp_send_chunk(req, (const char*)fb->buf, fb->len);
    esp_camera_fb_return(fb);
    if (res != ESP_OK) return res;
  }
}

void startCameraServer() {
  httpd_config_t config = HTTPD_DEFAULT_CONFIG();
  config.server_port = 80;
  config.stack_size  = 8192;

  if (httpd_start(&camera_httpd, &config) == ESP_OK) {
    httpd_uri_t index_uri = { "/", HTTP_GET, index_handler, nullptr };
    httpd_register_uri_handler(camera_httpd, &index_uri);

    httpd_uri_t jpg_uri = { "/jpg", HTTP_GET, jpg_handler, nullptr };
    httpd_register_uri_handler(camera_httpd, &jpg_uri);

    httpd_uri_t stream_uri = { "/stream", HTTP_GET, stream_handler, nullptr };
    httpd_register_uri_handler(camera_httpd, &stream_uri);
  }
}