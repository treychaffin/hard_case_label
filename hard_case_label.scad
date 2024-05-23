/*
    Hard Case Label
    
    written by: Trey Chaffin 
        - https://www.thingiverse.com/treyboogie/designs
    license: Creative Commons Attribution 4.0 International
        - https://creativecommons.org/licenses/by/4.0/
    
    for case models:
        - Case Number 1
            - Pelican 1400
            - Pelican 1500
            - Pelican 1550
            - Pelican 1600
        - Case Number 2
            - Pelican 1460
            - Pelican 1560
            - Pelican 1610
            - Pelican 1620
            - Pelican 1660
            - Pelican 1720
            - Apache 9800
        - Case Number 3
            - Pelican 1620
        - Case Number 4
            - Pelican 1470
        - Case Number 5
            - Apache 2800
            - Apache 3800
            - Apache 4800

Thanks to users:
    - [PegaChris](https://www.thingiverse.com/pegachris/designs) for testing the fitment on Pelican case models: 1460, 1610, 1620, 1660, 1500, and 1600.
    - [Papa_Z](https://www.thingiverse.com/papa_z/designs) for testing the fitment of Apache case model: 2800
*/

//////////////////////////////////////////////////////////////////////

/* case number */

// define corresponding case number from case dimensions array
case_number = 5; // [1,2,3,4,5]

// use custom label dimensions
use_custom_label_dimensions = "false"; // [true,false]

// custom label top width [mm]
custom_top_width = 118.8;

// custom label bottom width [mm]
custom_bottom_width = 116.8;

// custom label height [mm]
custom_height = 25;

// custom label thickness [mm]
custom_thickness = 3.1;

//////////////////////////////////////////////////////////////////////

/* string */

// define top string
top_string = "CASE NUMBER 5";

// define bottom string
bottom_string = "APACHE 3800 / 4800";

//////////////////////////////////////////////////////////////////////

/* font */

// font type
module __Customizer_Limit__ () {} // from customizer
font_type = "Liberation Mono:Bold";

// font height
module __Customizer_Limit__ () {} // remove from customizer
font_height = 6;

// font spacing
module __Customizer_Limit__ () {} // remove from customizer
font_spacing = 2;


//////////////////////////////////////////////////////////////////////

/* 
    Define the case label dimensions in this section
*/

module __Customizer_Limit__ () {} // remove case from customizer
cases = [
    // case number : 1
    [
        118.8,  // top width
        116.8,  // bottom width
        25,     // height
        3.1     // thickness
    ],
    // case number : 2
    [
        121.8,  // top width
        120.6,  // bottom width
        25,     // height
        3.1     // thickness
    ],
    // case number : 3
    [
        121.8,  // top width
        119.6,  // bottom width
        25,     // height
        3.1     // thickness
    ],
    // case number : 4
    [
        102.8,  // top width
        101.4,  // bottom width
        16,     // height
        3.1     // thickness
    ],
    // case number : 5
    [
        120.9,  // top width
        118.6,  // bottom width
        24.6,     // height
        3.3     // thickness
    ],
];


top_width = use_custom_label_dimensions == "true" ? 
    custom_top_width : cases[case_number-1][0];
bottom_width = use_custom_label_dimensions == "true" ? 
    custom_bottom_width : cases[case_number-1][1];
height = use_custom_label_dimensions == "true" ? 
    custom_height : cases[case_number-1][2];
thickness = use_custom_label_dimensions == "true" ? 
    custom_thickness : cases[case_number-1][3];

// text thickness
module __Customizer_Limit__ () {} // remove from customizer
text_thickness = 0.25*thickness;

//////////////////////////////////////////////////////////////////////

union () {
    difference () {
        union () {
            difference () {
                linear_extrude(height=thickness,scale=0.96) { 
                    union () {
                        mirror([0,1,0]) {
                            polygon(points=[[-0.5*top_width,0],
                            [0.5*top_width,0],
                            [0.5*bottom_width,height],
                            [-0.5*bottom_width,height]]);
                            
                            polygon(points=[[-0.5*top_width,0],
                            [0.5*top_width,0],
                            [0.5*bottom_width,height],
                            [-0.5*bottom_width,height]]);
                        }
                    }
                }
                translate([0,0,-1]) {
                    linear_extrude(height=thickness+12) {
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                    }
                }
            }
        }
        scale([0.915,0.87,1]) union () {
            difference () {
                linear_extrude(height=thickness+1,scale=1) { 
                    union () {
                        mirror([0,1,0]) {
                            polygon(points=[[-0.5*top_width,0],
                            [0.5*top_width,0],
                            [0.5*bottom_width,height],
                            [-0.5*bottom_width,height]]);
                            
                            polygon(points=[[-0.5*top_width,0],
                            [0.5*top_width,0],
                            [0.5*bottom_width,height],
                            [-0.5*bottom_width,height]]);
                        }
                    }
                }
                translate([0,0,-1]) {
                    linear_extrude(height=thickness+2) {
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                    }
                }
            }
        }
    }
    scale([1,1,0.75]) union () {
        difference () {
            linear_extrude(height=thickness,scale=0.96) { 
                union () {
                    mirror([0,1,0]) {
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                        
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                    }
                }
            }
            translate([0,0,-1]) {
                linear_extrude(height=thickness+2) {
                    polygon(points=[[-0.5*top_width,0],
                    [0.5*top_width,0],
                    [0.5*bottom_width,height],
                    [-0.5*bottom_width,height]]);
                }
            }
        }
    }
    scale([1,0.12,1]) union () {
        difference () {
            linear_extrude(height=thickness,scale=.96) { 
                union () {
                    mirror([0,1,0]) {
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                        
                        polygon(points=[[-0.5*top_width,0],
                        [0.5*top_width,0],
                        [0.5*bottom_width,height],
                        [-0.5*bottom_width,height]]);
                    }
                }
            }
            translate([0,0,-1]) {
                linear_extrude(height=thickness+2) {
                    polygon(points=[[-0.5*top_width,0],
                    [0.5*top_width,0],
                    [0.5*bottom_width,height],
                    [-0.5*bottom_width,height]]);
                }
            }
        }
    }
    // Strings
    if (case_number != 4) {
        translate([0,-3*font_spacing,0.75*thickness]) {
            linear_extrude(height=text_thickness) {
                text(top_string,
                font=font_type,
                valign="top",
                halign="center",
                size=font_height);
            }
        }
    }
    if (case_number == 4) {
        translate([0,-2.45*font_spacing,0.75*thickness]) {
            linear_extrude(height=text_thickness) {
                text(top_string,
                font=font_type,
                valign="top",
                halign="center",
                size=font_height);
            }
        }
    }
    if (case_number != 4  || use_custom_label_dimensions == "true") {
        translate([0,-4*font_spacing-font_height,0.75*thickness]) {
            linear_extrude(height=text_thickness) {
                text(bottom_string,
                font=font_type,
                valign="top",
                halign="center",
                size=font_height);
            }
        }
    }
}