module hanger(height, width, pin_height) {
    cube([width+pin_height, width, width]);
    cube([width, height, width]);
    translate([0, height-width, 0]) cube([width + 1 + 0.001, width, width]);
    translate([width+1, height, 0]) cube([width, pin_height, width]);
    translate([width+1, height-width, 0]) intersection() {
        cube([width, width, width]);
        translate([0, width, 0]) cylinder(r=width, $fn=50, h=width);
    }
}
