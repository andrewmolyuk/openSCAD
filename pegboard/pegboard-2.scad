use <pegboard-modules.scad>;

long_height = 28.5;
width = 3.8;
pin_height = 4;

rotate([90,0,0]) union() {
    hanger(long_height, width, pin_height);
    translate([-4,, long_height,0]) rotate([90,0,0]) difference() {
        cylinder(r=4 + 3.8, h=long_height, $fn=50);
        cylinder(r=4, h=long_height, $fn=50);
    }
}
