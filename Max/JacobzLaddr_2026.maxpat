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
        "rect": [ 110.0, 96.0, 1292.0, 567.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 813.0, 1098.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 866.0, 1194.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 866.0, 1147.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 856.0, 1223.0, 154.0, 22.0 ],
                    "text": "ctlout \"iPad Bluetooth\" 32 1"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 1322.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 310.0, 323.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1126.0, 1337.0, 45.0, 23.0 ],
                    "text": "/ 255."
                }
            },
            {
                "box": {
                    "clip": 0,
                    "id": "obj-57",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1126.0, 1283.0, 40.0, 40.0 ],
                    "size": 256.0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1126.0, 1369.0, 81.0, 23.0 ],
                    "text": "hsl $1 1. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1188.0, 1610.0, 51.0, 62.0 ],
                    "text": "color 0. 1. 0.141176 0."
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1126.0, 1562.5, 98.0, 22.0 ],
                    "text": "color $1 $2 $3 0."
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "swatch",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1041.0, 1441.0, 128.0, 32.0 ],
                    "saturation": 1.0
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1338.6666666666667, 1386.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-40",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": -2.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1283.6666666666667, 1386.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1230.0, 1421.5, 182.0, 22.0 ],
                    "text": "pak position f f f"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-30",
                    "maxclass": "flonum",
                    "maximum": 5.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1157.5, 1666.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "scale",
                    "fontface": 0,
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1157.5, 1697.0, 230.0, 23.0 ],
                    "text_width": 90.0
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 742.0, 1346.5, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 192.0, 924.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 749.0, 127.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 310.0, 367.0, 95.0, 22.0 ],
                    "text": "s selected_Card"
                }
            },
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
                    "patching_rect": [ 528.0, 1249.0, 59.0, 22.0 ],
                    "text": "p to_LED"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 1218.0, 1098.0, 73.0, 22.0 ],
                    "text": "jit.gl.camera"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 1643.0, 85.0, 22.0 ],
                    "text": "prepend xfade"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 115.0, 1517.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "xfade",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 82.0, 1365.0, 100.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-127", "jit.playlist", "preset_count", 5, 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "absolutepath", "/Users/danielbelquer/Downloads/Ember_Ballet_Slow_Motion.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "filename", "Ember_Ballet_Slow_Motion.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "id", "u990007734", 7, "obj-127", "jit.playlist", "preset_content", 1, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "absolutepath", "/Users/danielbelquer/Downloads/Storm_Chaser_Vertical_Cinematic.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "filename", "Storm_Chaser_Vertical_Cinematic.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "id", "u837011860", 7, "obj-127", "jit.playlist", "preset_content", 2, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "absolutepath", "/Users/danielbelquer/Downloads/download.MP4", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "filename", "download.MP4", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 3, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "id", "u496000746", 7, "obj-127", "jit.playlist", "preset_content", 3, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "absolutepath", "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/13_dew.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "filename", "13_dew.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 4, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "id", "u526006351", 7, "obj-127", "jit.playlist", "preset_content", 4, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "absolutepath", "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/00_valley.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "filename", "00_valley.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 5, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "id", "u406000837", 7, "obj-127", "jit.playlist", "preset_content", 5, "loop", 1, 4, "obj-127", "jit.playlist", "preset_execute", 5, "obj-126", "attrui", "attr", "fraction", 5, "obj-126", "attrui", "float", 0.45000000000000007, 5, "obj-122", "attrui", "attr", "line_growth", 5, "obj-122", "attrui", "int", 0, 5, "obj-121", "attrui", "attr", "line_fade", 5, "obj-121", "attrui", "int", 3, 5, "obj-120", "attrui", "attr", "randomness", 5, "obj-120", "attrui", "float", 0.4, 5, "obj-119", "attrui", "attr", "radius", 5, "obj-119", "attrui", "int", 1, 5, "obj-114", "attrui", "attr", "line_width", 5, "obj-114", "attrui", "float", 1.5, 5, "obj-11", "attrui", "attr", "num_edges", 5, "obj-11", "attrui", "int", 21, 5, "obj-10", "attrui", "attr", "amt", 5, "obj-10", "attrui", "float", 0.6400000000000001, 5, "obj-112", "attrui", "attr", "indimscale", 6, "obj-112", "attrui", "list", 0.25, 0.25, 5, "obj-102", "attrui", "attr", "colorize", 5, "obj-102", "attrui", "int", 1, 5, "obj-98", "attrui", "attr", "mode", 5, "obj-98", "attrui", "int", 1, 5, "obj-104", "toggle", "int", 1, 5, "obj-83", "attrui", "attr", "fontsize", 5, "obj-83", "attrui", "int", 142, 5, "obj-82", "attrui", "attr", "mode", 4, "obj-82", "attrui", "2d", 5, "obj-79", "attrui", "attr", "depth", 5, "obj-79", "attrui", "float", 0.0, 5, "obj-77", "attrui", "attr", "tracking", 5, "obj-77", "attrui", "float", 1.0, 5, "obj-74", "umenu", "int", 148, 5, "obj-46", "attrui", "attr", "lighting_enable", 5, "obj-46", "attrui", "int", 0, 5, "obj-45", "attrui", "attr", "smooth_shading", 5, "obj-45", "attrui", "int", 0, 5, "obj-34", "number", "int", 14, 5, "obj-71", "number", "float", 1.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-127", "jit.playlist", "preset_count", 5, 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "absolutepath", "/Users/danielbelquer/Downloads/Ember_Ballet_Slow_Motion.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "filename", "Ember_Ballet_Slow_Motion.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 1, "id", "u990007734", 7, "obj-127", "jit.playlist", "preset_content", 1, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "absolutepath", "/Users/danielbelquer/Downloads/Storm_Chaser_Vertical_Cinematic.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "filename", "Storm_Chaser_Vertical_Cinematic.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 2, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 2, "id", "u837011860", 7, "obj-127", "jit.playlist", "preset_content", 2, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "absolutepath", "/Users/danielbelquer/Downloads/download.MP4", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "filename", "download.MP4", 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 3, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 3, "id", "u496000746", 7, "obj-127", "jit.playlist", "preset_content", 3, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "absolutepath", "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/13_dew.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "filename", "13_dew.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 4, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 4, "id", "u526006351", 7, "obj-127", "jit.playlist", "preset_content", 4, "loop", 1, 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "filekind", "moviefile", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "absolutepath", "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/00_valley.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "filename", "00_valley.mp4", 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "loop", 1, 8, "obj-127", "jit.playlist", "preset_clipstate", 5, "selection", -1.0, -1.0, 7, "obj-127", "jit.playlist", "preset_clipstate", 5, "id", "u406000837", 7, "obj-127", "jit.playlist", "preset_content", 5, "loop", 1, 4, "obj-127", "jit.playlist", "preset_execute", 5, "obj-126", "attrui", "attr", "fraction", 5, "obj-126", "attrui", "float", 0.45000000000000007, 5, "obj-122", "attrui", "attr", "line_growth", 5, "obj-122", "attrui", "int", 0, 5, "obj-121", "attrui", "attr", "line_fade", 5, "obj-121", "attrui", "int", 3, 5, "obj-120", "attrui", "attr", "randomness", 5, "obj-120", "attrui", "float", 0.4, 5, "obj-119", "attrui", "attr", "radius", 5, "obj-119", "attrui", "int", 1, 5, "obj-114", "attrui", "attr", "line_width", 5, "obj-114", "attrui", "float", 1.5, 5, "obj-11", "attrui", "attr", "num_edges", 5, "obj-11", "attrui", "int", 21, 5, "obj-10", "attrui", "attr", "amt", 5, "obj-10", "attrui", "int", 1, 5, "obj-112", "attrui", "attr", "indimscale", 6, "obj-112", "attrui", "list", 0.25, 0.25, 5, "obj-102", "attrui", "attr", "colorize", 5, "obj-102", "attrui", "int", 1, 5, "obj-98", "attrui", "attr", "mode", 5, "obj-98", "attrui", "int", 1, 5, "obj-104", "toggle", "int", 1, 5, "obj-83", "attrui", "attr", "fontsize", 5, "obj-83", "attrui", "int", 142, 5, "obj-82", "attrui", "attr", "mode", 4, "obj-82", "attrui", "2d", 5, "obj-79", "attrui", "attr", "depth", 5, "obj-79", "attrui", "float", 0.0, 5, "obj-77", "attrui", "attr", "tracking", 5, "obj-77", "attrui", "float", 1.0, 5, "obj-74", "umenu", "int", 148, 5, "obj-46", "attrui", "attr", "lighting_enable", 5, "obj-46", "attrui", "int", 0, 5, "obj-45", "attrui", "attr", "smooth_shading", 5, "obj-45", "attrui", "int", 0, 5, "obj-34", "number", "int", 14, 5, "obj-71", "number", "float", 1.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 937.0, 1098.0, 262.0, 22.0 ],
                    "text": "jit.gl.syphonserver cards @servername CARDS"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-71",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1072.0, 1612.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1072.0, 1637.0, 101.0, 22.0 ],
                    "text": "color $1 $1 $1 $1"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 742.0, 1454.5, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 742.0, 1382.5, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 20,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "valley" ]
                            },
                            {
                                "key": 2,
                                "value": [ "storm" ]
                            },
                            {
                                "key": 3,
                                "value": [ "spark" ]
                            },
                            {
                                "key": 4,
                                "value": [ "solstice" ]
                            },
                            {
                                "key": 5,
                                "value": [ "ocean" ]
                            },
                            {
                                "key": 6,
                                "value": [ "bubble" ]
                            },
                            {
                                "key": 7,
                                "value": [ "dawn" ]
                            },
                            {
                                "key": 8,
                                "value": [ "desert" ]
                            },
                            {
                                "key": 9,
                                "value": [ "wind" ]
                            },
                            {
                                "key": 10,
                                "value": [ "night" ]
                            },
                            {
                                "key": 11,
                                "value": [ "maelstrom" ]
                            },
                            {
                                "key": 12,
                                "value": [ "marsh" ]
                            },
                            {
                                "key": 13,
                                "value": [ "dusk" ]
                            },
                            {
                                "key": 14,
                                "value": [ "dew" ]
                            },
                            {
                                "key": 15,
                                "value": [ "stone" ]
                            },
                            {
                                "key": 16,
                                "value": [ "fog" ]
                            },
                            {
                                "key": 17,
                                "value": [ "rainbow" ]
                            },
                            {
                                "key": 18,
                                "value": [ "mountain" ]
                            },
                            {
                                "key": 19,
                                "value": [ "lake" ]
                            },
                            {
                                "key": 20,
                                "value": [ "river" ]
                            }
                        ]
                    },
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 742.0, 1421.5, 121.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll cards @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 742.0, 1490.5, 75.0, 22.0 ],
                    "text": "prepend text"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 545.0, 1707.0, 267.0, 35.0 ],
                    "text": "jit.gl.layer @blend_enable 1 @blend_mode 1 1 @layer 5 @scale 1.5 1. 0. @preserve_aspect 0"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "", "" ],
                    "patching_rect": [ 545.0, 1627.0, 125.0, 22.0 ],
                    "text": "jit.gl.node @capture 1"
                }
            },
            {
                "box": {
                    "attr": "smooth_shading",
                    "id": "obj-45",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 874.0, 1612.0, 150.0, 22.0 ],
                    "text_width": 120.0
                }
            },
            {
                "box": {
                    "attr": "lighting_enable",
                    "id": "obj-46",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 874.0, 1637.0, 150.0, 22.0 ],
                    "text_width": 120.0
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 874.0, 1545.0, 52.0, 39.0 ],
                    "text": "3d only"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 874.0, 1458.0, 52.0, 39.0 ],
                    "text": "2d only"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1249.0, 1662.0, 37.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1323.0, 1474.0, 64.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1323.0, 1509.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1323.0, 1536.0, 48.0, 23.0 ],
                    "text": "fontlist"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1323.0, 1590.0, 74.0, 23.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1323.0, 1618.0, 85.0, 23.0 ],
                    "text": "prepend font"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-74",
                    "items": [ "Ableton Sans", ",", "Ableton Sans Regular Italic", ",", "Ableton Sans ExtraLight", ",", "Ableton Sans ExtraLight Italic", ",", "Ableton Sans Light", ",", "Ableton Sans Light Italic", ",", "Ableton Sans Medium", ",", "Ableton Sans Medium Italic", ",", "Ableton Sans Bold", ",", "Ableton Sans Bold Italic", ",", "Ableton Sans Bold Bold", ",", "Ableton Sans Bold", ",", "Ableton Sans Light Light", ",", "Ableton Sans Light", ",", "Ableton Sans Medium Medium", ",", "Ableton Sans Medium", ",", "Ableton Sans Small", ",", "Ableton Sans Small Regular Italic", ",", "Ableton Sans Small Bold", ",", "Ableton Sans Small Bold Italic", ",", "Academy Engraved LET Plain", ",", "Al Bayan Plain", ",", "Al Bayan Bold", ",", "Al Nile", ",", "Al Nile Bold", ",", "Al Tarikh", ",", "American Typewriter", ",", "American Typewriter Light", ",", "American Typewriter Semibold", ",", "American Typewriter Bold", ",", "American Typewriter Condensed", ",", "American Typewriter Condensed Light", ",", "American Typewriter Condensed Bold", ",", "Andale Mono", ",", "Apple Braille Outline 6 Dot", ",", "Apple Braille Outline 8 Dot", ",", "Apple Braille Pinpoint 6 Dot", ",", "Apple Braille Pinpoint 8 Dot", ",", "Apple Braille", ",", "Apple Chancery Chancery", ",", "Apple Color Emoji", ",", "Apple SD Gothic Neo", ",", "Apple SD Gothic Neo Thin", ",", "Apple SD Gothic Neo UltraLight", ",", "Apple SD Gothic Neo Light", ",", "Apple SD Gothic Neo Medium", ",", "Apple SD Gothic Neo SemiBold", ",", "Apple SD Gothic Neo Bold", ",", "Apple SD Gothic Neo ExtraBold", ",", "Apple SD Gothic Neo Heavy", ",", "Apple Symbols", ",", "AppleGothic", ",", "AppleMyungjo", ",", "Arial", ",", "Arial Italic", ",", "Arial Bold", ",", "Arial Bold Italic", ",", "Arial Black", ",", "Arial Hebrew", ",", "Arial Hebrew Light", ",", "Arial Hebrew Bold", ",", "Arial Hebrew Scholar", ",", "Arial Hebrew Scholar Light", ",", "Arial Hebrew Scholar Bold", ",", "Arial Narrow", ",", "Arial Narrow Italic", ",", "Arial Narrow Bold", ",", "Arial Narrow Bold Italic", ",", "Arial Rounded MT Bold", ",", "Arial Unicode MS", ",", "Avenir Book", ",", "Avenir Roman", ",", "Avenir Book Oblique", ",", "Avenir Oblique", ",", "Avenir Light", ",", "Avenir Light Oblique", ",", "Avenir Medium", ",", "Avenir Medium Oblique", ",", "Avenir Heavy", ",", "Avenir Heavy Oblique", ",", "Avenir Black", ",", "Avenir Black Oblique", ",", "Avenir Next", ",", "Avenir Next Italic", ",", "Avenir Next Ultra Light", ",", "Avenir Next Ultra Light Italic", ",", "Avenir Next Medium", ",", "Avenir Next Medium Italic", ",", "Avenir Next Demi Bold", ",", "Avenir Next Demi Bold Italic", ",", "Avenir Next Bold", ",", "Avenir Next Bold Italic", ",", "Avenir Next Heavy", ",", "Avenir Next Heavy Italic", ",", "Avenir Next Condensed", ",", "Avenir Next Condensed Italic", ",", "Avenir Next Condensed Ultra Light", ",", "Avenir Next Condensed Ultra Light Italic", ",", "Avenir Next Condensed Medium", ",", "Avenir Next Condensed Medium Italic", ",", "Avenir Next Condensed Demi Bold", ",", "Avenir Next Condensed Demi Bold Italic", ",", "Avenir Next Condensed Bold", ",", "Avenir Next Condensed Bold Italic", ",", "Avenir Next Condensed Heavy", ",", "Avenir Next Condensed Heavy Italic", ",", "Ayuthaya", ",", "Baghdad", ",", "Bangla MN", ",", "Bangla MN Bold", ",", "Bangla Sangam MN", ",", "Bangla Sangam MN Bold", ",", "Baskerville", ",", "Baskerville Italic", ",", "Baskerville SemiBold", ",", "Baskerville SemiBold Italic", ",", "Baskerville Bold", ",", "Baskerville Bold Italic", ",", "Beirut", ",", "Big Caslon Medium", ",", "Bodoni 72 Book", ",", "Bodoni 72 Book Italic", ",", "Bodoni 72 Bold", ",", "Bodoni 72 Oldstyle Book", ",", "Bodoni 72 Oldstyle Book Italic", ",", "Bodoni 72 Oldstyle Bold", ",", "Bodoni 72 Smallcaps Book", ",", "Bodoni Ornaments", ",", "Bradley Hand Bold", ",", "Brush Script MT Italic", ",", "Chalkboard", ",", "Chalkboard Bold", ",", "Chalkboard SE", ",", "Chalkboard SE Light", ",", "Chalkboard SE Bold", ",", "Chalkduster", ",", "Charter Roman", ",", "Charter Italic", ",", "Charter Bold", ",", "Charter Bold Italic", ",", "Charter Black", ",", "Charter Black Italic", ",", "Cochin", ",", "Cochin Italic", ",", "Cochin Bold", ",", "Cochin Bold Italic", ",", "Comic Sans MS", ",", "Comic Sans MS Bold", ",", "Copperplate", ",", "Copperplate Light", ",", "Copperplate Bold", ",", "Corsiva Hebrew", ",", "Corsiva Hebrew Bold", ",", "Courier New", ",", "Courier New Italic", ",", "Courier New Bold", ",", "Courier New Bold Italic", ",", "Damascus", ",", "Damascus Light", ",", "Damascus Medium", ",", "Damascus Semi Bold", ",", "Damascus Bold", ",", "DecoType Naskh", ",", "Devanagari MT", ",", "Devanagari MT Bold", ",", "Devanagari Sangam MN", ",", "Devanagari Sangam MN Bold", ",", "Didot", ",", "Didot Italic", ",", "Didot Bold", ",", "DIN Alternate Bold", ",", "DIN Condensed Bold", ",", "Diwan Kufi", ",", "Diwan Thuluth", ",", "Euphemia UCAS", ",", "Euphemia UCAS Italic", ",", "Euphemia UCAS Bold", ",", "Farah", ",", "Farisi", ",", "Futura Medium", ",", "Futura Medium Italic", ",", "Futura Bold", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Galvji", ",", "Galvji Oblique", ",", "Galvji Bold", ",", "Galvji Bold Oblique", ",", "GB18030 Bitmap", ",", "Geeza Pro", ",", "Geeza Pro Bold", ",", "Geneva", ",", "Georgia", ",", "Georgia Italic", ",", "Georgia Bold", ",", "Georgia Bold Italic", ",", "Gill Sans", ",", "Gill Sans Italic", ",", "Gill Sans Light", ",", "Gill Sans Light Italic", ",", "Gill Sans SemiBold", ",", "Gill Sans SemiBold Italic", ",", "Gill Sans Bold", ",", "Gill Sans Bold Italic", ",", "Gill Sans UltraBold", ",", "Grantha Sangam MN", ",", "Grantha Sangam MN Bold", ",", "Gujarati MT", ",", "Gujarati MT Bold", ",", "Gujarati Sangam MN", ",", "Gujarati Sangam MN Bold", ",", "Gurmukhi MN", ",", "Gurmukhi MN Bold", ",", "Gurmukhi MT", ",", "Gurmukhi Sangam MN", ",", "Gurmukhi Sangam MN Bold", ",", "Heiti SC Light", ",", "Heiti SC Medium", ",", "Heiti TC Light", ",", "Heiti TC Medium", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Light", ",", "Helvetica Light Oblique", ",", "Helvetica Bold", ",", "Helvetica Bold Oblique", ",", "Helvetica Neue", ",", "Helvetica Neue Italic", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue UltraLight Italic", ",", "Helvetica Neue Thin", ",", "Helvetica Neue Thin Italic", ",", "Helvetica Neue Light", ",", "Helvetica Neue Light Italic", ",", "Helvetica Neue Medium", ",", "Helvetica Neue Medium Italic", ",", "Helvetica Neue Bold", ",", "Helvetica Neue Bold Italic", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue Condensed Black", ",", "Herculanum", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Sans W0", ",", "Hiragino Sans W1", ",", "Hiragino Sans W2", ",", "Hiragino Sans W3", ",", "Hiragino Sans W4", ",", "Hiragino Sans W5", ",", "Hiragino Sans W6", ",", "Hiragino Sans W7", ",", "Hiragino Sans W8", ",", "Hiragino Sans W9", ",", "Hiragino Sans GB W3", ",", "Hiragino Sans GB W6", ",", "Hoefler Text", ",", "Hoefler Text Ornaments", ",", "Hoefler Text Italic", ",", "Hoefler Text Black", ",", "Hoefler Text Black Italic", ",", "Impact", ",", "InaiMathi", ",", "InaiMathi Bold", ",", "ITF Devanagari Book", ",", "ITF Devanagari Light", ",", "ITF Devanagari Medium", ",", "ITF Devanagari Demi", ",", "ITF Devanagari Bold", ",", "ITF Devanagari Marathi Book", ",", "ITF Devanagari Marathi Light", ",", "ITF Devanagari Marathi Medium", ",", "ITF Devanagari Marathi Demi", ",", "ITF Devanagari Marathi Bold", ",", "Kailasa", ",", "Kailasa Bold", ",", "Kannada MN", ",", "Kannada MN Bold", ",", "Kannada Sangam MN", ",", "Kannada Sangam MN Bold", ",", "Karla", ",", "Karla Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla Light", ",", "Karla Light", ",", "Karla Light Italic", ",", "Karla Light Italic", ",", "Karla Medium", ",", "Karla Medium", ",", "Karla Medium Italic", ",", "Karla Medium Italic", ",", "Karla SemiBold", ",", "Karla SemiBold Italic", ",", "Karla Bold", ",", "Karla Bold", ",", "Karla Bold Italic", ",", "Karla Bold Italic", ",", "Karla ExtraBold", ",", "Karla ExtraBold", ",", "Karla ExtraBold Italic", ",", "Karla ExtraBold Italic", ",", "Kefa III", ",", "Kefa III Light", ",", "Kefa III Bold", ",", "Kefa III ExtraBold", ",", "Khmer MN", ",", "Khmer MN Bold", ",", "Khmer Sangam MN", ",", "Kohinoor Bangla", ",", "Kohinoor Bangla Light", ",", "Kohinoor Bangla Medium", ",", "Kohinoor Bangla Semibold", ",", "Kohinoor Bangla Bold", ",", "Kohinoor Devanagari", ",", "Kohinoor Devanagari Light", ",", "Kohinoor Devanagari Medium", ",", "Kohinoor Devanagari Semibold", ",", "Kohinoor Devanagari Bold", ",", "Kohinoor Gujarati", ",", "Kohinoor Gujarati Light", ",", "Kohinoor Gujarati Medium", ",", "Kohinoor Gujarati Semibold", ",", "Kohinoor Gujarati Bold", ",", "Kohinoor Telugu", ",", "Kohinoor Telugu Light", ",", "Kohinoor Telugu Medium", ",", "Kohinoor Telugu Semibold", ",", "Kohinoor Telugu Bold", ",", "Kokonor", ",", "Krungthep", ",", "KufiStandardGK", ",", "Lao MN", ",", "Lao MN Bold", ",", "Lao Sangam MN", ",", "Lato", ",", "Lato Italic", ",", "Lato Hairline", ",", "Lato Hairline Italic", ",", "Lato Thin", ",", "Lato Thin Italic", ",", "Lato Light", ",", "Lato Light Italic", ",", "Lato Medium", ",", "Lato Medium Italic", ",", "Lato Semibold", ",", "Lato Semibold Italic", ",", "Lato Bold", ",", "Lato Bold Italic", ",", "Lato Heavy", ",", "Lato Heavy Italic", ",", "Lato Black", ",", "Lato Black Italic", ",", "Lucida Grande", ",", "Lucida Grande Bold", ",", "Luminari", ",", "Malayalam MN", ",", "Malayalam MN Bold", ",", "Malayalam Sangam MN", ",", "Malayalam Sangam MN Bold", ",", "Manrope", ",", "Manrope ExtraLight", ",", "Manrope Light", ",", "Manrope Medium", ",", "Manrope SemiBold", ",", "Manrope Bold", ",", "Manrope ExtraBold", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Menlo", ",", "Menlo Italic", ",", "Menlo Bold", ",", "Menlo Bold Italic", ",", "Microsoft Sans Serif", ",", "Mishafi", ",", "Mishafi Gold", ",", "Monaco", ",", "Mshtakan", ",", "Mshtakan Oblique", ",", "Mshtakan Bold", ",", "Mshtakan BoldOblique", ",", "Mukta Mahee", ",", "Mukta Mahee ExtraLight", ",", "Mukta Mahee Light", ",", "Mukta Mahee Medium", ",", "Mukta Mahee SemiBold", ",", "Mukta Mahee Bold", ",", "Mukta Mahee ExtraBold", ",", "Muna", ",", "Muna Bold", ",", "Muna Black", ",", "Myanmar MN", ",", "Myanmar MN Bold", ",", "Myanmar Sangam MN", ",", "Myanmar Sangam MN Bold", ",", "Nadeem", ",", "Nasalization", ",", "New Peninim MT", ",", "New Peninim MT Inclined", ",", "New Peninim MT Bold", ",", "New Peninim MT Bold Inclined", ",", "Noteworthy Light", ",", "Noteworthy Bold", ",", "Noto Nastaliq Urdu", ",", "Noto Nastaliq Urdu Bold", ",", "Noto Sans Batak", ",", "Noto Sans Kannada", ",", "Noto Sans Kannada ExtraLight", ",", "Noto Sans Kannada Thin", ",", "Noto Sans Kannada Light", ",", "Noto Sans Kannada Medium", ",", "Noto Sans Kannada SemiBold", ",", "Noto Sans Kannada Bold", ",", "Noto Sans Kannada ExtraBold", ",", "Noto Sans Kannada Black", ",", "Noto Sans Myanmar", ",", "Noto Sans Myanmar ExtraLight", ",", "Noto Sans Myanmar Thin", ",", "Noto Sans Myanmar Light", ",", "Noto Sans Myanmar Medium", ",", "Noto Sans Myanmar SemiBold", ",", "Noto Sans Myanmar Bold", ",", "Noto Sans Myanmar ExtraBold", ",", "Noto Sans Myanmar Black", ",", "Noto Sans NKo", ",", "Noto Sans Oriya", ",", "Noto Sans Oriya Bold", ",", "Noto Sans Syriac", ",", "Noto Sans Syriac Thin", ",", "Noto Sans Syriac ExtraLight", ",", "Noto Sans Syriac Light", ",", "Noto Sans Syriac Medium", ",", "Noto Sans Syriac SemiBold", ",", "Noto Sans Syriac Bold", ",", "Noto Sans Syriac ExtraBold", ",", "Noto Sans Syriac Black", ",", "Noto Sans Tagalog", ",", "Noto Serif Myanmar", ",", "Noto Serif Myanmar ExtraLight", ",", "Noto Serif Myanmar Thin", ",", "Noto Serif Myanmar Light", ",", "Noto Serif Myanmar Medium", ",", "Noto Serif Myanmar SemiBold", ",", "Noto Serif Myanmar Bold", ",", "Noto Serif Myanmar ExtraBold", ",", "Noto Serif Myanmar Black", ",", "NYU Perstare", ",", "NYU Perstare", ",", "NYU Perstare Italic", ",", "NYU Perstare Italic", ",", "NYU Perstare Thin", ",", "NYU Perstare Thin Italic", ",", "NYU Perstare Light", ",", "NYU Perstare Light", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Black", ",", "NYU Perstare Black", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Thin", ",", "NYU Perstare Condensed Thin Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "Optima", ",", "Optima Italic", ",", "Optima Bold", ",", "Optima Bold Italic", ",", "Optima ExtraBlack", ",", "Oriya MN", ",", "Oriya MN Bold", ",", "Oriya Sangam MN", ",", "Oriya Sangam MN Bold", ",", "Palatino", ",", "Palatino Italic", ",", "Palatino Bold", ",", "Palatino Bold Italic", ",", "Papyrus", ",", "Papyrus Condensed", ",", "Party LET Plain", ",", "Phosphate Inline", ",", "Phosphate Solid", ",", "PingFang HK", ",", "PingFang HK Ultralight", ",", "PingFang HK Thin", ",", "PingFang HK Light", ",", "PingFang HK Medium", ",", "PingFang HK Semibold", ",", "PingFang MO", ",", "PingFang MO Ultralight", ",", "PingFang MO Thin", ",", "PingFang MO Light", ",", "PingFang MO Medium", ",", "PingFang MO Semibold", ",", "PingFang SC", ",", "PingFang SC Ultralight", ",", "PingFang SC Thin", ",", "PingFang SC Light", ",", "PingFang SC Medium", ",", "PingFang SC Semibold", ",", "PingFang TC", ",", "PingFang TC Ultralight", ",", "PingFang TC Thin", ",", "PingFang TC Light", ",", "PingFang TC Medium", ",", "PingFang TC Semibold", ",", "Plantagenet Cherokee", ",", "Prata", ",", "PT Mono", ",", "PT Mono Bold", ",", "PT Sans", ",", "PT Sans Italic", ",", "PT Sans Bold", ",", "PT Sans Bold Italic", ",", "PT Sans Caption", ",", "PT Sans Caption Bold", ",", "PT Sans Narrow", ",", "PT Sans Narrow Bold", ",", "PT Serif", ",", "PT Serif Italic", ",", "PT Serif Bold", ",", "PT Serif Bold Italic", ",", "PT Serif Caption", ",", "PT Serif Caption Italic", ",", "Raanana", ",", "Raanana Bold", ",", "Rockwell", ",", "Rockwell Italic", ",", "Rockwell Bold", ",", "Rockwell Bold Italic", ",", "Sana", ",", "Sathu", ",", "Savoye LET Plain", ",", "Shree Devanagari 714", ",", "Shree Devanagari 714 Italic", ",", "Shree Devanagari 714 Bold", ",", "Shree Devanagari 714 Bold Italic", ",", "SignPainter HouseScript", ",", "SignPainter HouseScript Semibold", ",", "Silom", ",", "Sinhala MN", ",", "Sinhala MN Bold", ",", "Sinhala Sangam MN", ",", "Sinhala Sangam MN Bold", ",", "Skia", ",", "Skia Light", ",", "Skia Bold", ",", "Skia Black", ",", "Skia Extended", ",", "Skia Light Extended", ",", "Skia Black Extended", ",", "Skia Condensed", ",", "Skia Light Condensed", ",", "Skia Black Condensed", ",", "Snell Roundhand", ",", "Snell Roundhand Bold", ",", "Snell Roundhand Black", ",", "Songti SC", ",", "Songti SC Light", ",", "Songti SC Bold", ",", "Songti SC Black", ",", "Songti TC", ",", "Songti TC Light", ",", "Songti TC Bold", ",", "STIX Two Math", ",", "STIX Two Text", ",", "STIX Two Text Italic", ",", "STIX Two Text Medium", ",", "STIX Two Text Medium Italic", ",", "STIX Two Text SemiBold", ",", "STIX Two Text SemiBold Italic", ",", "STIX Two Text Bold", ",", "STIX Two Text Bold Italic", ",", "STSong", ",", "Sukhumvit Set Text", ",", "Sukhumvit Set Light", ",", "Sukhumvit Set Medium", ",", "Sukhumvit Set Semi Bold", ",", "Sukhumvit Set Bold", ",", "Sukhumvit Set Thin", ",", "Symbol", ",", "Tahoma", ",", "Tahoma Bold", ",", "Tamil MN", ",", "Tamil MN Bold", ",", "Tamil Sangam MN", ",", "Tamil Sangam MN Bold", ",", "Telugu MN", ",", "Telugu MN Bold", ",", "Telugu Sangam MN", ",", "Telugu Sangam MN Bold", ",", "Thonburi", ",", "Thonburi Light", ",", "Thonburi Bold", ",", "Times New Roman", ",", "Times New Roman Italic", ",", "Times New Roman Bold", ",", "Times New Roman Bold Italic", ",", "Trattatello", ",", "Trebuchet MS", ",", "Trebuchet MS Italic", ",", "Trebuchet MS Bold", ",", "Trebuchet MS Bold Italic", ",", "Verdana", ",", "Verdana Italic", ",", "Verdana Bold", ",", "Verdana Bold Italic", ",", "Waseem", ",", "Waseem Light", ",", "Webdings", ",", "Wingdings", ",", "Wingdings 2", ",", "Wingdings 3", ",", "Zapf Dingbats", ",", "Zapfino" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1323.0, 1562.0, 139.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 915.0, 1741.0, 296.0, 23.0 ],
                    "text": "jit.gl.text @color 1 1 1 1 @fontsize 20 @align 1"
                }
            },
            {
                "box": {
                    "attr": "tracking",
                    "fontface": 0,
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-77",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1254.0, 1346.0, 150.0, 23.0 ],
                    "text_width": 90.0
                }
            },
            {
                "box": {
                    "attr": "depth",
                    "fontface": 0,
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-79",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 874.0, 1587.0, 135.0, 23.0 ],
                    "text_width": 80.0
                }
            },
            {
                "box": {
                    "attr": "mode",
                    "fontface": 0,
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-82",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 869.0, 1416.0, 145.0, 23.0 ],
                    "text_width": 62.0
                }
            },
            {
                "box": {
                    "attr": "fontsize",
                    "fontface": 0,
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-83",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 874.0, 1500.0, 135.0, 23.0 ],
                    "text_width": 72.0
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 937.0, 1015.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "bang", "" ],
                    "patching_rect": [ 937.0, 1056.0, 697.0, 22.0 ],
                    "text": "jit.world cards @output_texture 1 @dim 1920 1080 @matrix_mode_async 0 @enable_cornerpin 1 @fsaa 1 @erase_color 0 0 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 192.0, 1731.0, 117.0, 22.0 ],
                    "text": "jit.gl.pix @gen xfade",
                    "varname": "jit.gl.pix_AA"
                }
            },
            {
                "box": {
                    "attr": "mode",
                    "id": "obj-98",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 255.0, 1234.0, 150.0, 22.0 ],
                    "text_width": 59.0
                }
            },
            {
                "box": {
                    "attr": "colorize",
                    "id": "obj-102",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 482.5, 1480.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 528.5, 1385.0, 107.0, 20.0 ],
                    "text": "Rendering params"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 192.0, 1764.0, 419.0, 22.0 ],
                    "text": "jit.gl.layer @blend_enable 0 @preserve_aspect 1 @scale 1.55 1. 1. @layer 0"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 273.0, 1292.0, 91.0, 20.0 ],
                    "text": "Pattern params"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.5, 1433.0, 81.0, 20.0 ],
                    "text": "(voronoi only)"
                }
            },
            {
                "box": {
                    "embedstate": [
                        [ "adapt", 1 ],
                        [ "bypass", 0 ],
                        [ "enable", 1 ]
                    ],
                    "filename": "jit.fx.ge.pattern.js",
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 192.0, 1540.0, 503.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "jit.fx.ge.pattern @indimscale 0.25 0.25 @mode 1 @line_fade 3. @radius 0.2 @line_width 1.5",
                    "textfile": {
                        "filename": "jit.fx.ge.pattern.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "v8_AA"
                }
            },
            {
                "box": {
                    "attr": "indimscale",
                    "displaymode": 4,
                    "id": "obj-112",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 255.0, 1260.0, 246.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "amt",
                    "displaymode": 2,
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 1314.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "num_edges",
                    "displaymode": 1,
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 1362.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "line_width",
                    "displaymode": 2,
                    "id": "obj-114",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 482.5, 1456.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "radius",
                    "displaymode": 2,
                    "id": "obj-119",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 1386.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "randomness",
                    "displaymode": 2,
                    "id": "obj-120",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 1410.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "line_fade",
                    "displaymode": 2,
                    "id": "obj-121",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 482.5, 1408.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "line_growth",
                    "displaymode": 2,
                    "id": "obj-122",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 482.5, 1432.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "fraction",
                    "displaymode": 2,
                    "id": "obj-126",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 273.0, 1338.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "clipheight": 36.333333333333336,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/13_dew.mp4",
                                "filename": "13_dew.mp4",
                                "filekind": "moviefile",
                                "id": "u526006351",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "unique": 1,
                                    "rate": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/card_videos/00_valley.mp4",
                                "filename": "00_valley.mp4",
                                "filekind": "moviefile",
                                "id": "u406000837",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "unique": 1,
                                    "rate": 1
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
                    "patching_rect": [ 192.0, 970.0, 551.0, 72.66666666666667 ],
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
                    "attr": "enable_cornerpin",
                    "id": "obj-129",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1019.0, 1016.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 310.0, 276.0, 58.0, 22.0 ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 310.0, 237.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-254",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1153.0, 738.0, 61.0, 22.0 ],
                    "text": "r to_serial"
                }
            },
            {
                "box": {
                    "id": "obj-243",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 528.0, 1293.0, 521.5, 38.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1217.0, 657.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 188.0, 140.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "patching_rect": [ 1217.0, 695.0, 50.0, 22.0 ],
                    "text": "console"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1200.0, 615.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 672.0, 77.0, 22.0 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "items": [ "a", ",", "b", ",", "c", ",", "d", ",", "e", ",", "f", ",", "g", ",", "h", ",", "j", ",", "k", ",", "l", ",", "m", ",", "n" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 932.0, 632.0, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.0, 173.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1078.0, 656.0, 32.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 149.0, 140.0, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1151.0, 578.0, 51.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 111.0, 208.0, 60.0, 20.0 ],
                    "text": "enabled"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1121.0, 576.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.0, 206.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1121.0, 615.0, 63.0, 22.0 ],
                    "text": "togedge"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1165.0, 656.0, 37.0, 22.0 ],
                    "text": "close"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1121.0, 656.0, 35.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 1067.0, 790.0, 89.0, 22.0 ],
                    "text": "serial c 115200"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 749.0, 455.0, 64.75, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "clipheight": 51.6,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "/Users/danielbelquer/Desktop/ART/ARTTECH projects/Vox Ex Machina/Arias/Originals (Grant)/Teresa BERGANZA sings Habanera from Carmen.mp3",
                                "filename": "Teresa BERGANZA sings Habanera from Carmen.mp3",
                                "filekind": "audiofile",
                                "id": "u208006738",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/Desktop/ART/MUSIC related projects/star_feather_blade/BOUNCES/A Leap into the Void - Isa Pag DD.mp3",
                                "filename": "A Leap into the Void - Isa Pag DD.mp3",
                                "filekind": "audiofile",
                                "id": "u983006749",
                                "loop": 0,
                                "content_state": {                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/Library/Group Containers/group.net.whatsapp.WhatsApp.shared/Message/Media/554191114217@s.whatsapp.net/3/0/308f5626-a8fd-4561-a2d7-031979ba4245.mp3",
                                "filename": "308f5626-a8fd-4561-a2d7-031979ba4245.mp3",
                                "filekind": "audiofile",
                                "id": "u076006662",
                                "loop": 0,
                                "content_state": {                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/Desktop/ART/MUSIC related projects/star_feather_blade/BOUNCES/A Shrine and a Bell - Pag Matt dB.mp3",
                                "filename": "A Shrine and a Bell - Pag Matt dB.mp3",
                                "filekind": "audiofile",
                                "id": "u332006760",
                                "loop": 0,
                                "content_state": {                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/Desktop/ART/MUSIC related projects/x+dB/Baião.mp3",
                                "filename": "Baião.mp3",
                                "filekind": "audiofile",
                                "id": "u958006771",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-23",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 749.0, 164.0, 202.0, 263.0 ],
                    "quality": "basic",
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
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.0, 200.0, 98.0, 22.0 ],
                    "text": "/apriltag 1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 310.0, 200.0, 82.0, 22.0 ],
                    "text": "route /apriltag"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 310.0, 142.0, 97.0, 22.0 ],
                    "text": "udpreceive 5001"
                }
            },
            {
                "box": {
                    "attr": "saturation",
                    "id": "obj-59",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1041.0, 1411.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "vol",
                    "id": "obj-48",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 335.0, 924.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "order": 2,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 467.5, 1207.359375, 577.5, 1207.359375 ],
                    "source": [ "obj-127", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 201.5, 1224.0, 537.5, 1224.0 ],
                    "order": 0,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 1 ],
                    "order": 1,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-243", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-254", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1167.0, 1722.0, 933.0, 1722.0, 933.0, 1737.0, 924.5, 1737.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 751.5, 1692.0, 924.5, 1692.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 607.5, 1692.0, 924.5, 1692.0 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 2 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "order": 0,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 883.5, 1635.0, 861.0, 1635.0, 861.0, 1728.0, 924.5, 1728.0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 883.5, 1728.0, 924.5, 1728.0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "order": 0,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "midpoints": [ 941.5, 657.0, 918.0, 657.0, 918.0, 618.0, 1107.0, 618.0, 1107.0, 573.0, 1130.5, 573.0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1258.5, 1686.0, 1209.0, 1686.0, 1209.0, 1689.0, 1134.0, 1689.0, 1134.0, 1683.0, 924.5, 1683.0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "hidden": 1,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1332.5, 1691.6796875, 1011.0, 1691.6796875, 1011.0, 1692.0, 924.5, 1692.0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1392.5, 1584.0, 1332.5, 1584.0 ],
                    "source": [ "obj-74", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1263.5, 1599.0, 1035.0, 1599.0, 1035.0, 1728.0, 933.0, 1728.0, 933.0, 1737.0, 924.5, 1737.0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 883.5, 1611.0, 861.0, 1611.0, 861.0, 1728.0, 924.5, 1728.0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 878.5, 1455.0, 861.0, 1455.0, 861.0, 1728.0, 924.5, 1728.0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 883.5, 1524.0, 861.0, 1524.0, 861.0, 1728.0, 924.5, 1728.0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-8": [ "live.slider", "xfade", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}