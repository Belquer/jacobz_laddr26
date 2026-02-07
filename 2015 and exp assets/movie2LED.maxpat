{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 84.0, 139.0, 1000.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 115.0, 1000.0, 698.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 115.0, 1000.0, 758.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "linecount": 98,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 0.0, 0.0, 837.0, 1320.0 ],
                                                    "text": "#include <Adafruit_NeoPixel.h>\n\n#define LED_PIN    9\n#define NUM_LEDS   44\n#define BAUD       115200\n\n// Protocol (unchanged):\n//  'F'(70), LEN(=132), [132 bytes RGB], CHK = sum(payload)&0xFF\n// Handshake (new):\n//  After a valid frame is applied and shown, Arduino sends 'R'(82).\n\nAdafruit_NeoPixel strip(NUM_LEDS, LED_PIN, NEO_GRB + NEO_KHZ800);\n\n// Parser state\nenum ParseState : uint8_t { WAIT_HDR, WAIT_LEN, WAIT_PAYLOAD, WAIT_CHK };\nParseState state = WAIT_HDR;\n\nconst uint8_t EXPECTED_LEN = NUM_LEDS * 3;\nstatic uint8_t payload[NUM_LEDS * 3];\nuint8_t len = 0;\nuint16_t idx = 0;      // index into payload\nuint16_t sum = 0;      // running sum for checksum\nuint32_t lastByteMs = 0;\nconst uint16_t FRAME_IDLE_TIMEOUT_MS = 50; // if no bytes for 50ms, reset parser\n\nvoid reset_parser() {\n  state = WAIT_HDR;\n  len = 0;\n  idx = 0;\n  sum = 0;\n}\n\nvoid setup() {\n  strip.begin();\n  strip.show();\n  Serial.begin(BAUD);\n  reset_parser();\n  // Signal ready for the very first frame\n  Serial.write('R');\n}\n\nvoid loop() {\n  // Timeout to recover from partial frames\n  if (state != WAIT_HDR && (millis() - lastByteMs) > FRAME_IDLE_TIMEOUT_MS) {\n    reset_parser();\n  }\n\n  while (Serial.available()) {\n    uint8_t b = (uint8_t)Serial.read();\n    lastByteMs = millis();\n\n    switch (state) {\n      case WAIT_HDR:\n        if (b == 'F') {\n          state = WAIT_LEN;\n        }\n        break;\n\n      case WAIT_LEN:\n        len = b;\n        if (len == EXPECTED_LEN) {\n          idx = 0;\n          sum = 0;\n          state = WAIT_PAYLOAD;\n        } else {\n          // wrong length; resync\n          reset_parser();\n        }\n        break;\n\n      case WAIT_PAYLOAD:\n        payload[idx++] = b;\n        sum += b;\n        if (idx >= EXPECTED_LEN) {\n          state = WAIT_CHK;\n        }\n        break;\n\n      case WAIT_CHK: {\n        uint8_t chk = b;\n        if (((uint8_t)sum) == chk) {\n          // Valid frame -> apply and show\n          uint16_t j = 0;\n          for (uint16_t i = 0; i < NUM_LEDS; ++i) {\n            uint8_t r = payload[j++];\n            uint8_t g = payload[j++];\n            uint8_t blu = payload[j++];\n            strip.setPixelColor(i, r, g, blu);\n          }\n          strip.show();           // interrupts disabled briefly here\n          Serial.write('R');      // tell host it's safe to send next frame\n        }\n        // Whether checksum passed or not, reset to find next frame\n        reset_parser();\n        } break;\n    }\n  }\n}"
                                                }
                                            }
                                        ],
                                        "lines": [],
                                        "default_bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
                                        "saved_attribute_attributes": {
                                            "bgcolor": {
                                                "expression": "themecolor.live_selection"
                                            }
                                        }
                                    },
                                    "patching_rect": [ 124.0, 390.0, 115.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_selection"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_selection"
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ]
                                    },
                                    "text": "p ARDUINO_CODE"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 368.0, 78.0, 20.0 ],
                                    "text": "turn LEDs off"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 677.0, 523.0, 109.0, 22.0 ],
                                    "text": "prepend saturation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 546.0, 523.0, 99.0, 22.0 ],
                                    "text": "prepend contrast"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 422.0, 523.0, 111.0, 22.0 ],
                                    "text": "prepend brightness"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-115",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 677.0, 490.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-113",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 546.0, 490.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-111",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 422.0, 490.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 314.0, 316.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 735.0, 120.0, 690.0, 758.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 744.5, 286.0, 74.0, 23.0 ],
                                                    "text": "jit.fill LED 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 916.5, 281.0, 74.0, 23.0 ],
                                                    "text": "jit.fill LED 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 555.5, 281.0, 74.0, 23.0 ],
                                                    "text": "jit.fill LED 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.588235, 0.588235, 0.980392, 1.0 ],
                                                    "contdata": 1,
                                                    "id": "obj-23",
                                                    "maxclass": "multislider",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 874.0, 163.0, 154.0, 103.0 ],
                                                    "peakcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                                                    "setminmax": [ 0.0, 255.0 ],
                                                    "setstyle": 1,
                                                    "settype": 0,
                                                    "size": 44,
                                                    "slidercolor": [ 0.196078, 0.196078, 0.588235, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.588235, 0.980392, 0.588235, 1.0 ],
                                                    "contdata": 1,
                                                    "id": "obj-14",
                                                    "maxclass": "multislider",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 717.0, 163.0, 154.0, 103.0 ],
                                                    "peakcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                                                    "setminmax": [ 0.0, 255.0 ],
                                                    "setstyle": 1,
                                                    "settype": 0,
                                                    "size": 44,
                                                    "slidercolor": [ 0.196078, 0.588235, 0.196078, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.980392, 0.588235, 0.588235, 1.0 ],
                                                    "contdata": 1,
                                                    "id": "obj-25",
                                                    "maxclass": "multislider",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 560.0, 163.0, 154.0, 103.0 ],
                                                    "peakcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                                                    "setminmax": [ 0.0, 255.0 ],
                                                    "setstyle": 1,
                                                    "settype": 0,
                                                    "size": 44,
                                                    "slidercolor": [ 0.588235, 0.196078, 0.196078, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-13",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 194.5, 4.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-107",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 53.0, 103.0, 57.0, 22.0 ],
                                                    "text": "jit.brcosa"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 396.0, 168.0, 19.0, 20.0 ],
                                                    "text": "B"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 261.5, 168.0, 19.0, 20.0 ],
                                                    "text": "G"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 53.0, 168.0, 19.0, 20.0 ],
                                                    "text": "A"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 169.5, 168.0, 19.0, 20.0 ],
                                                    "text": "R"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 484.5, 805.0, 72.0, 20.0 ],
                                                    "text": "to visualizer"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 214.0, 805.0, 51.0, 20.0 ],
                                                    "text": "to serial"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 173.0, 726.0, 73.0, 22.0 ],
                                                    "text": "speedlim 30"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 173.0, 669.0, 40.0, 22.0 ],
                                                    "text": "join 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-252",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 521.0, 413.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-251",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 323.0, 413.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-250",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 149.0, 413.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-246",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 439.0, 304.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-245",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 241.0, 304.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-244",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 65.5, 304.0, 37.0, 22.0 ],
                                                    "text": "zl rev"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-221",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 562.0, 442.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-223",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 439.0, 497.0, 119.0, 22.0 ],
                                                    "text": "join 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-225",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 521.0, 379.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-226",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 480.0, 338.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-227",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 439.0, 262.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-214",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 364.0, 442.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-216",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 238.5, 497.0, 93.0, 22.0 ],
                                                    "text": "join 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-218",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 323.0, 379.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-219",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 282.0, 338.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-220",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 241.0, 262.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-213",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 190.0, 442.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-199",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 78.0, 497.0, 108.0, 22.0 ],
                                                    "text": "join 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-196",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 149.0, 379.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-194",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 108.0, 338.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-191",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 65.5, 262.0, 60.0, 22.0 ],
                                                    "text": "zl slice 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-181",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 267.0, 551.0, 73.0, 23.0 ],
                                                    "text": "jit.fill strip 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 439.0, 546.0, 73.0, 23.0 ],
                                                    "text": "jit.fill strip 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 78.0, 546.0, 73.0, 23.0 ],
                                                    "text": "jit.fill strip 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-131",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 53.0, 67.0, 300.0, 22.0 ],
                                                    "text": "jit.matrix LED 4 char 11 4 @interp 1 @adapt 0 @thru 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-80",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 439.0, 217.0, 41.0, 22.0 ],
                                                    "text": "jit.spill"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-79",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 241.0, 217.0, 41.0, 22.0 ],
                                                    "text": "jit.spill"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 65.5, 217.0, 41.0, 22.0 ],
                                                    "text": "jit.spill"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "" ],
                                                    "patching_rect": [ 53.0, 139.0, 395.0, 22.0 ],
                                                    "text": "jit.unpack 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-96",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "jit_gl_texture" ],
                                                    "patching_rect": [ 53.0, 4.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-97",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 58.0, 665.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-98",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 442.5, 800.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-99",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 173.0, 800.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-107", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-107", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-107", 0 ],
                                                    "source": [ "obj-131", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 276.5, 627.10546875, 452.0, 627.10546875 ],
                                                    "source": [ "obj-181", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-194", 0 ],
                                                    "source": [ "obj-191", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-244", 0 ],
                                                    "source": [ "obj-191", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-196", 0 ],
                                                    "source": [ "obj-194", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-199", 2 ],
                                                    "source": [ "obj-194", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-213", 0 ],
                                                    "source": [ "obj-196", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-250", 0 ],
                                                    "source": [ "obj-196", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-199", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-199", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 448.5, 795.0, 452.0, 795.0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-199", 0 ],
                                                    "source": [ "obj-213", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-216", 0 ],
                                                    "source": [ "obj-214", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-181", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-216", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-216", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-214", 0 ],
                                                    "source": [ "obj-218", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-251", 0 ],
                                                    "source": [ "obj-218", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-216", 2 ],
                                                    "source": [ "obj-219", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-218", 0 ],
                                                    "source": [ "obj-219", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 87.5, 651.0, 452.0, 651.0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-219", 0 ],
                                                    "source": [ "obj-220", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-245", 0 ],
                                                    "source": [ "obj-220", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-223", 0 ],
                                                    "source": [ "obj-221", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-223", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 2 ],
                                                    "order": 1,
                                                    "source": [ "obj-223", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-221", 0 ],
                                                    "source": [ "obj-225", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-252", 0 ],
                                                    "source": [ "obj-225", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-223", 2 ],
                                                    "source": [ "obj-226", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-226", 0 ],
                                                    "source": [ "obj-227", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-246", 0 ],
                                                    "source": [ "obj-227", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-199", 3 ],
                                                    "source": [ "obj-244", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-216", 3 ],
                                                    "source": [ "obj-245", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-223", 3 ],
                                                    "source": [ "obj-246", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-199", 1 ],
                                                    "source": [ "obj-250", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-216", 1 ],
                                                    "source": [ "obj-251", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-223", 1 ],
                                                    "source": [ "obj-252", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-99", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-72", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "source": [ "obj-72", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-72", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-191", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-220", 0 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-227", 0 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 243.0, 563.0, 161.0, 22.0 ],
                                    "text": "p snake_matrix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 314.0, 523.0, 75.0, 22.0 ],
                                    "text": "zl group 132"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 314.0, 366.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 314.0, 475.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "int" ],
                                    "patching_rect": [ 314.0, 427.0, 47.0, 22.0 ],
                                    "text": "uzi 132"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 812.0, 138.0, 22.0 ],
                                    "text": "join 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-253",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 853.0, 63.0, 22.0 ],
                                    "text": "s to_serial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-177",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 385.0, 612.0, 143.0, 22.0 ],
                                    "text": "jit.matrix strip 4 char 44 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 243.0, 763.0, 49.0, 22.0 ],
                                    "text": "append"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 243.0, 726.0, 89.0, 22.0 ],
                                    "text": "expr $i1 % 256"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 243.0, 691.0, 43.0, 22.0 ],
                                    "text": "zl sum"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 753.0, 93.0, 22.0 ],
                                    "text": "prepend 70 132"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 314.0, 272.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_gl_texture" ],
                                    "patching_rect": [ 243.0, 502.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 385.0, 659.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-177", 0 ],
                                    "source": [ "obj-101", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 1,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "order": 0,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "midpoints": [ 323.5, 339.0, 323.5, 339.0 ],
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 2 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 2 ],
                                    "midpoints": [ 555.5, 558.0, 394.5, 558.0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 2 ],
                                    "midpoints": [ 686.5, 558.0, 394.5, 558.0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-177", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 1 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-253", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 1 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 227.0, 803.0, 212.3711221218109, 22.0 ],
                    "text": "p to_LED"
                }
            },
            {
                "box": {
                    "clipheight": 36.333333333333336,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/01storm.mp4",
                                "filename": "01storm.mp4",
                                "filekind": "moviefile",
                                "id": "u347010293",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/02valley.mp4",
                                "filename": "02valley.mp4",
                                "filekind": "moviefile",
                                "id": "u401006918",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/03spark.mp4",
                                "filename": "03spark.mp4",
                                "filekind": "moviefile",
                                "id": "u016010151",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/04solstice.mp4",
                                "filename": "04solstice.mp4",
                                "filekind": "moviefile",
                                "id": "u877010153",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/05ocean.mp4",
                                "filename": "05ocean.mp4",
                                "filekind": "moviefile",
                                "id": "u577010152",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/06bubble.mp4",
                                "filename": "06bubble.mp4",
                                "filekind": "moviefile",
                                "id": "u399009882",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/07dawn.mp4",
                                "filename": "07dawn.mp4",
                                "filekind": "moviefile",
                                "id": "u559009880",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/08desert.mp4",
                                "filename": "08desert.mp4",
                                "filekind": "moviefile",
                                "id": "u791007468",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/09wind.mp4",
                                "filename": "09wind.mp4",
                                "filekind": "moviefile",
                                "id": "u309010121",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/10night.mp4",
                                "filename": "10night.mp4",
                                "filekind": "moviefile",
                                "id": "u936006912",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/11maesltron.mp4",
                                "filename": "11maesltron.mp4",
                                "filekind": "moviefile",
                                "id": "u546010289",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/12marsh.mp4",
                                "filename": "12marsh.mp4",
                                "filekind": "moviefile",
                                "id": "u640010294",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/13dusk.mp4",
                                "filename": "13dusk.mp4",
                                "filekind": "moviefile",
                                "id": "u371009885",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/14dew.mp4",
                                "filename": "14dew.mp4",
                                "filekind": "moviefile",
                                "id": "u650009926",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/15stone.mp4",
                                "filename": "15stone.mp4",
                                "filekind": "moviefile",
                                "id": "u513009928",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/16fog.mp4",
                                "filename": "16fog.mp4",
                                "filekind": "moviefile",
                                "id": "u993009989",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/17rainbow.mp4",
                                "filename": "17rainbow.mp4",
                                "filekind": "moviefile",
                                "id": "u323009927",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/18mountain.mp4",
                                "filename": "18mountain.mp4",
                                "filekind": "moviefile",
                                "id": "u358009923",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/19lake.mp4",
                                "filename": "19lake.mp4",
                                "filekind": "moviefile",
                                "id": "u085009850",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/20river.mp4",
                                "filename": "20river.mp4",
                                "filekind": "moviefile",
                                "id": "u547010047",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "DNA_video.mov",
                                "filename": "DNA_video.mov",
                                "filekind": "moviefile",
                                "id": "u213002391",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "drawto": "",
                    "expansion": "grow",
                    "id": "obj-127",
                    "loop": 1,
                    "maxclass": "jit.playlist",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "", "dictionary" ],
                    "output_texture": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 156.0, 26.0, 551.0, 763.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 460.0, 84.0, 383.0, 727.0 ],
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-243",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 227.0, 844.0, 212.3711221218109, 36.08247220516205 ],
                    "sync": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 431.5, 777.7265625, 429.8711221218109, 777.7265625 ],
                    "source": [ "obj-127", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 165.5, 796.6841562171467, 236.5, 796.6841562171467 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-243", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}