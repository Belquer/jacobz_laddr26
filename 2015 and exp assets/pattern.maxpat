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
        "rect": [ 59.0, 114.0, 1000.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 188.0, 1440.0, 123.0, 22.0 ],
                    "text": "jit.gl.pix @gen brcosa"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 190.0, 1371.0, 117.0, 22.0 ],
                    "text": "jit.gl.pix @gen xfade",
                    "varname": "jit.gl.pix_AA"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 190.0, 1506.0, 309.0, 22.0 ],
                    "text": "jit.gl.layer @preserve_aspect 1 @scale 1. 1. 1. @layer 0"
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
                    "patching_rect": [ 192.0, 1243.0, 87.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "jit.fx.ge.pattern",
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
                    "patching_rect": [ 302.0, 374.0, 551.0, 763.0 ],
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
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 311.5, 1149.0, 201.5, 1149.0 ],
                    "order": 1,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 1 ],
                    "midpoints": [ 311.5, 1149.0, 252.0, 1149.0, 252.0, 1302.0, 297.5, 1302.0 ],
                    "order": 0,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 197.5, 1443.0, 199.5, 1443.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}