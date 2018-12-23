use <pegboard-modules.scad>;

short_height = 16;
width = 3.8;
pin_height = 4;

hanger(short_height, width, pin_height);

translate([-50, short_height-width, 0]) cube([50, width, width]);
rotate([0, 0, -13.7]) translate([-51.5, 0, 0]) cube([51.5, width, width]);
translate([-50-width, short_height-width, 0]) cube([width, width + pin_height, width]);
