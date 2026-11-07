{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 938.0, 70.0, 726.0, 901.0 ],
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 5,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.67164179104476, 557.4626865671642, 265.0, 76.0 ],
                    "presentation_linecount": 5,
                    "text": "/speakers/xyz -0.707105 0.707105 0.999997 0.707105 0.707105 0.999997 -0.999997 -0. 0.999997 0.999997 0. 0.999997 -0.708609 -0.705598 0.999997 0.707105 -0.707105 0.999997"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 285.0746268656717, 396.26865671641787, 67.0, 22.0 ],
                    "text": "/format xyz"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 285.07462686567163, 367.16417910447757, 670.0, 22.0 ],
                    "text": "/speakers/aed -45. 45. 1.41421 45. 45. 1.41421 -90. 45. 1.41421 90. 45. 1.41421 -134.878006 45. 1.41421 135. 45. 1.41421"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 222.38805970149252, 332.08955223880594, 295.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "/speakers/xyz -1 1 6 1 1 6 -12 0 6 12 0 6 -1 -1 6 1 -1 6"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 20.0, 432.08955223880594, 91.0, 22.0 ],
                    "text": "spat5.converter"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 202.23880597014923, 476.86567164179104, 265.0, 62.0 ],
                    "text": "/speakers/aed -45. 22.989767 1.536229 45. 22.989767 1.536229 -90. 26.565052 1.341641 90. 26.565052 1.341641 -135. 22.989767 1.536229 135. 22.989767 1.536229"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 481.3432835820895, 84.0, 21.0 ],
                    "text": "s -to-visualizer-"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 340.0, 131.0, 22.0 ],
                    "text": "prepend /speakers/aed"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 20.0, 311.0, 169.0, 22.0 ],
                    "text": "spat5.osc.route /speakers/aed"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "spat5.osc.view",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 166.0, 321.0, 129.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 104.0, 24.0, 241.0, 22.0 ],
                    "text": "/preset/load grame-speaker-layout.txt, bang"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 104.0, 52.0, 237.0, 22.0 ],
                    "text": "/preset/load maxB-speaker-layout.txt, bang"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 52.0, 71.0, 22.0 ],
                    "text": "/preset/load"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 24.0, 82.0, 22.0 ],
                    "text": "/preset/export"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 406.0, 719.0, 1120.0, 612.0 ],
                        "default_fontsize": 11.0,
                        "gridonopen": 2,
                        "gridsize": [ 10.0, 10.0 ],
                        "gridsnaponopen": 2,
                        "toolbarvisible": 0,
                        "boxes": [
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 240.0, 430.0, 71.0, 21.0 ],
                                    "text": "r init-patche"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 240.0, 462.0, 848.0, 33.0 ],
                                    "text": "/grid/angulardivisions/number 0, /grid/thickness 1., /grid/spacing 0.87, /grid/line/number 11, /grid/mode square, /layout leftright, /speaker/*/proportion 150., /display/zoom 48., /window/height 770, /window/width 770, /window/topleft 480 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 102.0, 1427.0, 870.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-147",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 550.0, 83.0, 151.0, 21.0 ],
                                                    "text": "/background/transparency $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                                    "id": "obj-143",
                                                    "maxclass": "live.dial",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 550.0, 30.0, 68.0, 48.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 687.0, 48.0, 44.0, 48.0 ],
                                                    "saved_attribute_attributes": {
                                                        "focusbordercolor": {
                                                            "expression": ""
                                                        },
                                                        "valueof": {
                                                            "parameter_initial": [ 0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.dial[3]",
                                                            "parameter_mmax": 100.0,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "transparency",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 5
                                                        }
                                                    },
                                                    "varname": "live.dial[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-154",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1180.0, 334.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-150",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 150.5, 134.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "export the window as a JPEG image file",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-151",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1163.0, 219.5, 134.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "export the window as a PNG image file",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-152",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 194.0, 114.0, 21.0 ],
                                                    "text": "/export/image file.jpg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-153",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1180.0, 263.0, 114.0, 21.0 ],
                                                    "text": "/export/image file.png"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-145",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 260.0, 666.5, 243.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "copy the snapshot to clipboard, and specify the end-of-line character (typically comma \"\\,\")",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-146",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 308.5, 710.0, 150.0, 22.0 ],
                                                    "text": "/status/copytoclipboard \", \""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-144",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 151.0, 666.5, 106.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "copy the status to clipboard",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-142",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 143.5, 710.0, 131.0, 22.0 ],
                                                    "text": "/status/copytoclipboard"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 680.5, 740.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-104",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 170.0, 150.5, 88.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "set the window width in pixels",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-101",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 211.0, 263.0, 151.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "minimise the window (only works if the minimise button is available)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-100",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 486.0, 123.0, 132.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "set the window bounds (top left position, width and height)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-99",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 300.0, 129.0, 132.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "set the window top left position (in pixels)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-98",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.75, 150.5, 123.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "set the window size (width, height) in pixels",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-97",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 880.5, 30.0, 130.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "enable/disable the minimise button (in the window titlebar)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-92",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1093.0, 36.0, 103.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "enable/disable the window titlebar",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-91",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 747.875, 30.0, 132.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "enable/disable the close button (in the window titlebar)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-90",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 287.5, 12.0, 89.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "set title in the window titlebar",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-89",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 225.25, 6.0, 59.5, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "make the window visible",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-88",
                                                    "linecount": 7,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 246.5, 394.0, 83.0, 112.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "deliver the whole state of the object via the dump outlet (rightmost outlet)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-87",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 167.5, 449.0, 79.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "print the version in the Max Console",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-85",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1200.0, 81.5, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[15]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[17]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1199.5, 104.0, 69.0, 22.0 ],
                                                    "text": "/opaque $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1133.5, 81.5, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[14]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[16]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-84",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1133.0, 104.0, 65.0, 22.0 ],
                                                    "text": "/titlebar $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1010.0, 81.5, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[13]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[15]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 890.0, 81.5, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[12]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[14]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 789.0, 81.5, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[9]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[13]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1010.0, 104.0, 122.0, 22.0 ],
                                                    "text": "/buttons/maximise $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-79",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 890.0, 104.0, 119.0, 22.0 ],
                                                    "text": "/buttons/minimise $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 788.5, 140.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 788.5, 225.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 788.5, 104.0, 99.0, 22.0 ],
                                                    "text": "/buttons/close $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 0,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-12",
                                                    "linecount": 12,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1030.0, 357.0, 163.0, 173.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "this parameter is used in conjunction with /floating:\n floating windows with hidesondeactivate=1 are floating only for the current application.\nfloating windows with hidesondeactivate=0 are globally floating (on top of all applications)\n\nthis is a macOS only feature",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1050.0, 314.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_longname": "live.toggle[11]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[2]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1050.0, 334.0, 125.0, 22.0 ],
                                                    "text": "/hidesondeactivate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-76",
                                                    "linecount": 9,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 870.0, 140.0, 264.0, 136.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "different (graphics) rendering engine are available. They should all \"look\" pretty much the same, but one might provide better performance than another. It's hard to predict, you'd need to test and benchmark.\nOpenGL might make a better usage of the GPU power, but not necessarily...\nCoreGraphics usually provides slightly better font rendering (available on macOS only)",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "live.menu",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 950.5, 269.0, 141.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "CoreGraphics Renderer", "OpenGL Renderer", "Software Renderer" ],
                                                            "parameter_longname": "live.menu[3]",
                                                            "parameter_mmax": 2,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.menu[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 950.5, 297.0, 62.0, 21.0 ],
                                                    "text": "/engine $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 869.0, 274.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[8]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "visible",
                                                    "texton": "visible",
                                                    "varname": "live.toggle[12]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-73",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 868.5, 297.0, 77.0, 21.0 ],
                                                    "text": "/fps/visible $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 868.5, 334.0, 152.0, 21.0 ],
                                                    "text": "spat5.osc.prepend /rendering"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-27",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 761.5, 269.0, 100.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "enable/disable floating window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-23",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 919.0, 380.0, 100.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "enable/disable all keyboard shortcuts",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 928.5, 429.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_longname": "live.toggle[5]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[11]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-18",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 928.0, 449.0, 72.0, 33.0 ],
                                                    "text": "/keymapping/active $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-141",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 90.5, 740.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-138",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1140.0, 560.0, 102.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "make the status window floating",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-139",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 1140.0, 607.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[4]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "floating",
                                                    "texton": "floating",
                                                    "varname": "live.toggle[10]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-140",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1139.5, 626.0, 88.0, 21.0 ],
                                                    "text": "/help/floating $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-137",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 548.5, 560.0, 102.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "make the status window floating",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-133",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 810.0, 394.0, 100.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "restore the shortcut from file",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-134",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 820.0, 449.0, 100.0, 33.0 ],
                                                    "text": "/keymapping/load shortcut.xml"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-135",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 700.0, 401.0, 93.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "export the shortcut to file",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-136",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 700.0, 449.0, 110.0, 33.0 ],
                                                    "text": "/keymapping/export shortcut.xml"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-131",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 548.0, 607.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[3]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "floating",
                                                    "texton": "floating",
                                                    "varname": "live.toggle[9]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-132",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 548.0, 626.0, 95.0, 21.0 ],
                                                    "text": "/status/floating $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-118",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1020.0, 560.0, 111.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "font size of the help window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-119",
                                                    "maxclass": "number",
                                                    "maximum": 20,
                                                    "minimum": 10,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1020.0, 601.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-120",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1020.0, 626.0, 99.0, 22.0 ],
                                                    "text": "/help/font/size $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-121",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 900.5, 560.0, 115.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "if the window is opened, close it; and vice versa",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-122",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 818.5, 560.0, 66.5, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "close the help window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-123",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 741.0, 560.0, 68.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the help window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 680.5, 671.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-125",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 733.5, 626.0, 62.0, 21.0 ],
                                                    "text": "/help/open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-126",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 890.5, 626.0, 97.0, 21.0 ],
                                                    "text": "/help/openorclose"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-127",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 813.0, 626.0, 63.0, 21.0 ],
                                                    "text": "/help/close"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-128",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 680.5, 626.0, 34.0, 21.0 ],
                                                    "text": "/help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-129",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 660.0, 560.0, 80.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the help window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-106",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 430.0, 560.0, 111.5, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "font size of the status window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-107",
                                                    "maxclass": "number",
                                                    "maximum": 20,
                                                    "minimum": 10,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 430.0, 601.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-108",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 430.0, 626.0, 109.0, 22.0 ],
                                                    "text": "/status/font/size $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-109",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 310.0, 560.0, 115.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "if the window is opened, close it; and vice versa",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-110",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 228.5, 560.0, 66.5, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "close the status window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-111",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 151.0, 560.0, 70.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the status window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-112",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 90.5, 671.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-113",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 143.5, 626.0, 70.0, 21.0 ],
                                                    "text": "/status/open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-114",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 300.5, 626.0, 106.0, 21.0 ],
                                                    "text": "/status/openorclose"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-115",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 223.0, 626.0, 72.0, 21.0 ],
                                                    "text": "/status/close"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-116",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 90.5, 626.0, 43.0, 21.0 ],
                                                    "text": "/status"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-117",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 70.0, 560.0, 70.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the status window",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-105",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 13.0, 780.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-102",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 780.0, 314.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[2]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "floating",
                                                    "texton": "floating",
                                                    "varname": "live.toggle[3]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-103",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 779.5, 333.0, 64.0, 21.0 ],
                                                    "text": "/floating $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-35",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 10.0, 6.0, 77.0, 75.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the window and bring it to front",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-17",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 12.0, 112.0, 50.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "pick the background color",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-20",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 582.0, 388.0, 115.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "if the window is opened, close it; and vice versa",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-21",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 490.0, 388.0, 66.5, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "close the shortcut editor",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-71",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.5, 388.0, 70.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the shortcut editor",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 342.0, 509.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-74",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 425.0, 449.0, 75.0, 33.0 ],
                                                    "text": "/keymapping/open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-93",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 590.0, 449.0, 100.0, 33.0 ],
                                                    "text": "/keymapping/openorclose"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-94",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 505.5, 449.0, 76.5, 33.0 ],
                                                    "text": "/keymapping/close"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-95",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 342.0, 449.0, 73.0, 21.0 ],
                                                    "text": "/keymapping"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-96",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 331.5, 388.0, 75.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "open the shortcut editor",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-70",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 151.0, 11.0, 77.0, 75.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "if the window is opened, close it; and vice versa",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-69",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 151.0, 83.0, 73.0, 21.0 ],
                                                    "text": "/openorclose"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-67",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 710.0, 314.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[7]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "enable",
                                                    "texton": "enable",
                                                    "varname": "live.toggle[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-68",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 709.5, 333.0, 62.0, 21.0 ],
                                                    "text": "/enable $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-66",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 604.0, 269.0, 93.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "centre the window in the screen",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-65",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 479.5, 269.0, 121.0, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "maximize the window (not full screen)\nor use shift+f",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-63",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 510.0, 333.0, 60.0, 21.0 ],
                                                    "text": "/maximize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-19",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 267.5, 510.0, 41.0, 21.0 ],
                                                    "text": "/dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-16",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 667.0, 140.0, 110.0, 38.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "global window scale"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-15",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 170.0, 510.0, 73.0, 21.0 ],
                                                    "text": "/post/version"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                                    "id": "obj-14",
                                                    "maxclass": "live.dial",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "float" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 700.0, 175.0, 44.0, 48.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 266.0, 46.5, 44.0, 48.0 ],
                                                    "saved_attribute_attributes": {
                                                        "focusbordercolor": {
                                                            "expression": ""
                                                        },
                                                        "valueof": {
                                                            "parameter_initial": [ 100.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.dial[2]",
                                                            "parameter_mmax": 300.0,
                                                            "parameter_mmin": 10.0,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "scale",
                                                            "parameter_type": 0,
                                                            "parameter_unitstyle": 5
                                                        }
                                                    },
                                                    "varname": "live.dial"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-7",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 701.0, 225.0, 55.0, 21.0 ],
                                                    "text": "/scale $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 13.0, 500.0, 142.0, 21.0 ],
                                                    "text": "spat5.osc.prepend /window"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-64",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 295.0, 58.0, 94.0, 21.0 ],
                                                    "text": "\"the window title\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-62",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 630.0, 333.0, 45.0, 21.0 ],
                                                    "text": "/centre"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 13.0, 414.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 132.0, 372.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-51",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 114.0, 281.0, 79.0, 38.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "or use cmd+f",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 425.5, 314.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[43]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[5]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-53",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 425.0, 333.0, 74.0, 21.0 ],
                                                    "text": "/resizable $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 339.5, 314.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_initial": [ 1.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "live.toggle[10]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[6]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-55",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 339.0, 333.0, 78.0, 21.0 ],
                                                    "text": "/moveable $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "live.toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 249.5, 314.0, 15.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "off", "on" ],
                                                            "parameter_longname": "live.toggle[44]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "varname": "live.toggle[7]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-57",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 249.0, 333.0, 73.0, 21.0 ],
                                                    "text": "/minimise $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 132.0, 314.0, 55.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[45]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "fullscreen",
                                                    "texton": "fullscreen",
                                                    "varname": "live.toggle[8]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-59",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 132.0, 333.0, 77.0, 21.0 ],
                                                    "text": "/fullscreen $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-50",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 626.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-49",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 567.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 449.0, 199.0, 196.0, 21.0 ],
                                                    "text": "pak 40 40 400 300"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-46",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 508.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-47",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 449.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-48",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 449.0, 225.0, 111.0, 21.0 ],
                                                    "text": "/bounds $1 $2 $3 $4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 311.0, 199.0, 78.0, 21.0 ],
                                                    "text": "pak 40 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-34",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 370.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-37",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 311.0, 174.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-38",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 311.0, 225.0, 74.0, 21.0 ],
                                                    "text": "/topleft $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-39",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 241.0, 199.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-40",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 225.0, 60.0, 21.0 ],
                                                    "text": "/height $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-41",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 170.0, 199.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-42",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 170.0, 225.0, 56.0, 21.0 ],
                                                    "text": "/width $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-43",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 77.0, 199.0, 51.0, 21.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-44",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 77.0, 225.0, 71.0, 21.0 ],
                                                    "text": "/size $1 400"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 77.0, 269.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 13.0, 316.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 13.0, 145.0, 30.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "live.text",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 233.0, 64.0, 44.0, 15.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [ "val1", "val2" ],
                                                            "parameter_longname": "live.toggle[46]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "live.toggle",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "visible",
                                                    "texton": "visible",
                                                    "varname": "live.toggle[4]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-24",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 233.0, 83.0, 59.0, 21.0 ],
                                                    "text": "/visible $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgmode": 0,
                                                    "border": 0,
                                                    "clickthrough": 0,
                                                    "enablehscroll": 0,
                                                    "enablevscroll": 0,
                                                    "id": "obj-36",
                                                    "lockeddragscroll": 0,
                                                    "lockedsize": 0,
                                                    "maxclass": "bpatcher",
                                                    "name": "spat5.colorpicker.maxpat",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "offset": [ 0.0, 0.0 ],
                                                    "outlettype": [ "list" ],
                                                    "patching_rect": [ 409.0, 58.0, 40.0, 20.0 ],
                                                    "viewvisibility": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 13.0, 560.0, 29.0, 21.0 ],
                                                    "text": "thru"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-30",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 88.5, 17.0, 59.5, 62.0 ],
                                                    "saved_attribute_attributes": {
                                                        "bubble_bgcolor": {
                                                            "expression": "themecolor.theme_bubble_bgcolor"
                                                        },
                                                        "bubble_outlinecolor": {
                                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                                        },
                                                        "textcolor": {
                                                            "expression": "themecolor.live_control_fg"
                                                        }
                                                    },
                                                    "text": "or use ctrl+w or cmd+w",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 409.0, 84.0, 139.0, 21.0 ],
                                                    "text": "prepend /background/color"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 100.0, 83.0, 40.0, 21.0 ],
                                                    "text": "/close"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 295.0, 83.0, 46.0, 21.0 ],
                                                    "text": "/title $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.0,
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 13.0, 83.0, 39.0, 21.0 ],
                                                    "text": "/open"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-10", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-103", 0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 789.0, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-103", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-108", 0 ],
                                                    "source": [ "obj-107", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 439.5, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-108", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-141", 0 ],
                                                    "source": [ "obj-112", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 153.0, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 310.0, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 232.5, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 100.0, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-116", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-120", 0 ],
                                                    "source": [ "obj-119", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 1029.5, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-130", 0 ],
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 743.0, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 900.0, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-126", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 822.5, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-127", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 690.0, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-128", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "midpoints": [ 960.0, 325.5, 878.0, 325.5 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "midpoints": [ 690.0, 770.0, 22.5, 770.0 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 0 ],
                                                    "source": [ "obj-131", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "midpoints": [ 557.5, 658.5, 100.0, 658.5 ],
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 829.5, 495.0, 351.5, 495.0 ],
                                                    "source": [ "obj-134", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 709.5, 495.0, 351.5, 495.0 ],
                                                    "source": [ "obj-136", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-140", 0 ],
                                                    "source": [ "obj-139", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 1149.0, 658.5, 690.0, 658.5 ],
                                                    "source": [ "obj-140", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "midpoints": [ 100.0, 770.0, 22.5, 770.0 ],
                                                    "source": [ "obj-141", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-141", 0 ],
                                                    "midpoints": [ 153.0, 735.0, 100.0, 735.0 ],
                                                    "source": [ "obj-142", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-147", 0 ],
                                                    "source": [ "obj-143", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-141", 0 ],
                                                    "midpoints": [ 318.0, 735.0, 100.0, 735.0 ],
                                                    "source": [ "obj-146", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 559.5, 118.0, 22.5, 118.0 ],
                                                    "source": [ "obj-147", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 179.5, 546.0, 22.5, 546.0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-154", 0 ],
                                                    "source": [ "obj-152", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-154", 0 ],
                                                    "source": [ "obj-153", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 1189.5, 363.0, 141.5, 363.0 ],
                                                    "source": [ "obj-154", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 937.5, 495.0, 351.5, 495.0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 277.0, 546.0, 22.5, 546.0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-84", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 242.5, 117.0, 22.5, 117.0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 418.5, 117.5, 22.5, 117.5 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 22.5, 117.5, 22.5, 117.5 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "midpoints": [ 86.5, 302.5, 22.5, 302.5 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 1 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 320.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 304.5, 117.5, 22.5, 117.5 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 250.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 179.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 86.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 1 ],
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 458.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 2 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 109.5, 117.5, 22.5, 117.5 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 3 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 434.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 348.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 258.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 141.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "midpoints": [ 141.5, 403.0, 22.5, 403.0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 639.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 519.5, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 719.0, 362.5, 141.5, 362.5 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 160.5, 119.5, 22.5, 119.5 ],
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 710.5, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 351.5, 547.5, 22.5, 547.5 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "midpoints": [ 878.0, 325.5, 878.0, 325.5 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 434.5, 496.5, 351.5, 496.5 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 878.0, 363.0, 141.5, 363.0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "midpoints": [ 798.0, 257.0, 86.5, 257.0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "midpoints": [ 899.5, 132.0, 798.0, 132.0 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "midpoints": [ 798.0, 132.0, 798.0, 132.0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "midpoints": [ 1019.5, 132.0, 798.0, 132.0 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "midpoints": [ 1142.5, 132.0, 798.0, 132.0 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-85", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "midpoints": [ 1209.0, 132.0, 798.0, 132.0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "midpoints": [ 1059.5, 363.0, 141.5, 363.0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 599.5, 495.0, 351.5, 495.0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 515.0, 495.0, 351.5, 495.0 ],
                                                    "source": [ "obj-94", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "midpoints": [ 351.5, 496.5, 351.5, 496.5 ],
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 787.5, 214.5, 129.0, 21.0 ],
                                    "text": "p windowmanagement"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 440.0, 380.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 350.0, 27.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-28",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 188.5, 110.0, 62.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_bgcolor": {
                                            "expression": "themecolor.theme_bubble_bgcolor"
                                        },
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_bubble_outlinecolor"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_control_fg"
                                        }
                                    },
                                    "text": "enable/disable zooming with the mouse wheel",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 192.0, 245.0, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_longname": "live.toggle[19]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle[347]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.toggle[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 191.5, 268.5, 76.0, 21.0 ],
                                    "text": "/zoom/lock $1"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-32",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "spat5.known.colors.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 310.0, 276.0, 85.5, 15.0 ],
                                    "varname": "live.menu[4]",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-33",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "spat5.colorpicker.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 290.0, 253.0, 40.0, 20.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 290.0, 300.0, 142.0, 21.0 ],
                                    "text": "prepend /background/color"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 120.0, 300.0, 141.0, 21.0 ],
                                    "text": "spat5.osc.prepend /display"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.0, 268.5, 54.0, 21.0 ],
                                    "text": "/zoom $1"
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                    "id": "obj-38",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 120.0, 214.5, 50.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 304.0, 90.0, 50.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[4]",
                                            "parameter_mmax": 300.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "zoom",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 930.0, 74.5, 44.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_longname": "live.toggle[181]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "visible",
                                    "texton": "visible",
                                    "varname": "live.toggle[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 930.0, 93.5, 141.0, 21.0 ],
                                    "text": "/angulardivisions/visible $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 50.0, 390.0, 40.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_longname": "live.toggle[83]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.toggle[76]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "visible",
                                    "texton": "visible",
                                    "varname": "live.toggle[7]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 462.0, 27.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 190.0, 27.0, 21.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 420.0, 111.0, 21.0 ],
                                    "text": "/controllers/visible $1"
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                    "id": "obj-9",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 698.0, 36.5, 70.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 643.0, 309.0, 70.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "live.dial[59]",
                                            "parameter_mmax": 10.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "thickness",
                                            "parameter_type": 0,
                                            "parameter_units": "m",
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 698.0, 93.5, 73.0, 21.0 ],
                                    "text": "/thickness $1"
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                    "id": "obj-23",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 778.0, 36.5, 50.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 384.5, 283.0, 50.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "live.dial[36]",
                                            "parameter_mmax": 50.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "divisions",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "varname": "live.dial[7]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-120",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 778.0, 93.5, 148.0, 21.0 ],
                                    "text": "/angulardivisions/number $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 626.0, 93.5, 67.0, 21.0 ],
                                    "text": "/spacing $1"
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                    "id": "obj-15",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 626.0, 36.5, 70.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 332.0, 283.0, 70.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "live.dial[37]",
                                            "parameter_mmax": 10.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spacing",
                                            "parameter_type": 0,
                                            "parameter_units": "m",
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "live.dial[6]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 539.0, 93.5, 85.0, 21.0 ],
                                    "text": "/line/number $1"
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.0, 0.019608, 0.078431, 0.0 ],
                                    "id": "obj-20",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 539.0, 36.5, 50.0, 48.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 297.0, 283.0, 50.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_longname": "live.dial[38]",
                                            "parameter_mmax": 50.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "gridlines",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "varname": "live.dial[5]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-55",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 92.5, 56.0, 21.0 ],
                                    "text": "/mode $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 424.25, 30.5, 70.5, 57.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 426.0, 270.0, 50.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "none", "circular", "square" ],
                                            "parameter_longname": "live.tab[4]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "live.tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 450.0, 140.5, 125.0, 21.0 ],
                                    "text": "spat5.osc.prepend /grid"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 4,
                                    "num_lines_presentation": 3,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 310.0, 50.0, 60.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 381.5, 105.0, 50.0, 54.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "single", "leftright", "topbottom", "automatic" ],
                                            "parameter_longname": "live.tab[3]",
                                            "parameter_mmax": 3,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "varname": "live.tab[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 240.0, 140.5, 58.0, 21.0 ],
                                    "text": "/layout $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-157",
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 230.0, 102.5, 70.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 521.5, 86.0, 70.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "single", "leftright", "topbottom" ],
                                            "parameter_longname": "live.dial[42]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "xoffset",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.menu[2]"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 500.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 20.0, 140.0, 152.0, 21.0 ],
                                    "text": "spat5.osc.prepend /speaker/*"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-8",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "spat5.known.colors.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 34.5, 64.0, 85.5, 15.0 ],
                                    "varname": "live.menu[1]",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                                    "id": "obj-21",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 130.0, 35.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 100 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[69]",
                                            "parameter_mmax": 300.0,
                                            "parameter_mmin": 25.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": " ",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-27",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 130.0, 90.0, 78.0, 21.0 ],
                                    "text": "/proportion $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-201",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 90.0, 81.0, 21.0 ],
                                    "text": "prepend /color"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-198",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "spat5.colorpicker.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 20.0, 39.0, 40.0, 20.0 ],
                                    "viewvisibility": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 707.5, 127.0, 459.5, 127.0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 249.5, 175.25, 29.5, 175.25 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 459.5, 175.25, 29.5, 175.25 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 787.5, 127.0, 459.5, 127.0 ],
                                    "source": [ "obj-120", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 2,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "order": 3,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 6,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "order": 7,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 4,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "order": 5,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 635.5, 127.0, 459.5, 127.0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 265.0, 128.5, 249.5, 128.5 ],
                                    "source": [ "obj-157", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 548.5, 127.0, 459.5, 127.0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "source": [ "obj-198", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 939.5, 127.0, 459.5, 127.0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "midpoints": [ 129.5, 291.25, 129.5, 291.25 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 459.5, 126.5, 459.5, 126.5 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 340.0, 128.5, 249.5, 128.5 ],
                                    "source": [ "obj-56", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "styles": [
                            {
                                "name": "AudioStatus_Menu",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "autogradient": 0,
                                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "color"
                                    }
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Audiomix",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "gradient"
                                    }
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Default 11Bold Poletti",
                                "default": {
                                    "fontsize": [ 11.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Default M4L",
                                "default": {
                                    "fontname": [ "Arial Bold" ],
                                    "fontsize": [ 11.0 ],
                                    "patchlinecolor": [ 0.290196, 0.309804, 0.301961, 0.85 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Default M4L Poletti",
                                "default": {
                                    "fontname": [ "Arial Bold" ],
                                    "fontsize": [ 10.0 ],
                                    "patchlinecolor": [ 0.290196, 0.309804, 0.301961, 0.85 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Default M4L-1",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "gradient"
                                    },
                                    "fontface": [ 1 ],
                                    "fontname": [ "Arial" ],
                                    "fontsize": [ 11.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Default Max7 Poletti",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "gradient"
                                    }
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "Max 12 Regular",
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "jbb",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "gradient"
                                    },
                                    "fontname": [ "Arial" ],
                                    "fontsize": [ 9.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "ksliderWhite",
                                "default": {
                                    "color": [ 1.0, 1.0, 1.0, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "newobjBlue-1",
                                "default": {
                                    "accentcolor": [ 0.317647, 0.654902, 0.976471, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "newobjGreen-1",
                                "default": {
                                    "accentcolor": [ 0.0, 0.533333, 0.168627, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "numberGold-1",
                                "default": {
                                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            }
                        ],
                        "bgcolor": [ 0.2794714185446066, 0.2794713501433647, 0.27947136810449297, 1.0 ],
                        "editing_bgcolor": [ 0.2794714185446066, 0.2794713501433647, 0.27947136810449297, 1.0 ],
                        "saved_attribute_attributes": {
                            "accentcolor": {
                                "expression": "themecolor.theme_accentcolor"
                            },
                            "bubble_bgcolor": {
                                "expression": "themecolor.theme_bubble_bgcolor"
                            },
                            "bubble_outlinecolor": {
                                "expression": "themecolor.theme_bubble_outlinecolor"
                            },
                            "clearcolor": {
                                "expression": "themecolor.theme_clearcolor"
                            },
                            "color": {
                                "expression": "themecolor.theme_color"
                            },
                            "editing_bgcolor": {
                                "expression": "themecolor.live_surface_bg"
                            },
                            "elementcolor": {
                                "expression": "themecolor.theme_elementcolor"
                            },
                            "locked_bgcolor": {
                                "expression": "themecolor.live_surface_bg"
                            },
                            "patchlinecolor": {
                                "expression": "themecolor.theme_patchlinecolor"
                            },
                            "selectioncolor": {
                                "expression": "themecolor.theme_selectioncolor"
                            },
                            "stripecolor": {
                                "expression": "themecolor.theme_stripecolor"
                            },
                            "textcolor": {
                                "expression": "themecolor.live_control_fg"
                            }
                        }
                    },
                    "patching_rect": [ 20.0, 105.0, 56.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "accentcolor": {
                            "expression": "themecolor.theme_accentcolor"
                        },
                        "bubble_bgcolor": {
                            "expression": "themecolor.theme_bubble_bgcolor"
                        },
                        "bubble_outlinecolor": {
                            "expression": "themecolor.theme_bubble_outlinecolor"
                        },
                        "clearcolor": {
                            "expression": "themecolor.theme_clearcolor"
                        },
                        "color": {
                            "expression": "themecolor.theme_color"
                        },
                        "editing_bgcolor": {
                            "expression": "themecolor.live_surface_bg"
                        },
                        "elementcolor": {
                            "expression": "themecolor.theme_elementcolor"
                        },
                        "locked_bgcolor": {
                            "expression": "themecolor.live_surface_bg"
                        },
                        "patchlinecolor": {
                            "expression": "themecolor.theme_patchlinecolor"
                        },
                        "selectioncolor": {
                            "expression": "themecolor.theme_selectioncolor"
                        },
                        "stripecolor": {
                            "expression": "themecolor.theme_stripecolor"
                        },
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.2794714185446066, 0.2794713501433647, 0.27947136810449297, 1.0 ],
                        "fontsize": 11.0,
                        "locked_bgcolor": [ 0.2794714185446066, 0.2794713501433647, 0.27947136810449297, 1.0 ]
                    },
                    "text": "p display"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 20.0, 136.0, 119.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.speaker.config"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-87::obj-15": [ "live.dial[37]", "spacing", 0 ],
            "obj-87::obj-157": [ "live.dial[42]", "xoffset", 0 ],
            "obj-87::obj-198::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-87::obj-20": [ "live.dial[38]", "gridlines", 0 ],
            "obj-87::obj-21": [ "live.dial[69]", " ", 0 ],
            "obj-87::obj-23": [ "live.dial[36]", "divisions", 0 ],
            "obj-87::obj-24": [ "live.toggle[181]", "live.toggle", 0 ],
            "obj-87::obj-29": [ "live.toggle[19]", "live.toggle[347]", 0 ],
            "obj-87::obj-32::obj-10": [ "live.menu[4]", "live.menu[1]", 0 ],
            "obj-87::obj-33::obj-62": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-87::obj-38": [ "live.dial[4]", "zoom", 0 ],
            "obj-87::obj-40::obj-10": [ "live.menu[3]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-102": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-11": [ "live.toggle[11]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-131": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-139": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-14": [ "live.dial[2]", "scale", 0 ],
            "obj-87::obj-40::obj-143": [ "live.dial[3]", "transparency", 0 ],
            "obj-87::obj-40::obj-2": [ "live.toggle[14]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-22": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-26": [ "live.toggle[46]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-29": [ "live.toggle[8]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-36::obj-62": [ "live.text[2]", "live.text[9]", 0 ],
            "obj-87::obj-40::obj-52": [ "live.toggle[43]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-54": [ "live.toggle[10]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-56": [ "live.toggle[44]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-58": [ "live.toggle[45]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-67": [ "live.toggle[7]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-81": [ "live.toggle[9]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-82": [ "live.toggle[12]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-83": [ "live.toggle[13]", "live.toggle", 0 ],
            "obj-87::obj-40::obj-85": [ "live.toggle[15]", "live.toggle", 0 ],
            "obj-87::obj-45": [ "live.toggle[83]", "live.toggle[76]", 0 ],
            "obj-87::obj-5": [ "live.tab[4]", "live.tab", 0 ],
            "obj-87::obj-56": [ "live.tab[3]", "live.tab", 0 ],
            "obj-87::obj-8::obj-10": [ "live.menu[1]", "live.menu[1]", 0 ],
            "obj-87::obj-9": [ "live.dial[59]", "thickness", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-87::obj-32::obj-10": {
                    "parameter_longname": "live.menu[4]"
                },
                "obj-87::obj-33::obj-62": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-87::obj-40::obj-36::obj-62": {
                    "parameter_longname": "live.text[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}