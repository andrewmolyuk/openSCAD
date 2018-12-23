use <pegboard-modules.scad>;

short_height = 16;
width = 3.8;
pin_height = 4;

hanger(short_height, width, pin_height);

translate([-width-2, short_height-width, 0]) intersection() {
    cube([width, width, width]);
    translate([width, width, 0]) cylinder(r=width, $fn=30, h=width);
}
translate([-2, short_height-width, 0]) cube([2, width, width]);
translate([-width-2, short_height-0.001, 0]) cube([width, pin_height/2, width]);
