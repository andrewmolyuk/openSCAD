width = 5;
fillet = 1;
hanger_width = 19.6;
hanger_height = 27.5;
hook_height = 10;
pin_height = 2;

bar_width = width - fillet * 2;
minkowski() {
    union() {
        cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([hanger_width - width, 0]) cube(size=[bar_width, hook_height + bar_width + pin_height, bar_width]);
        translate([0, hook_height]) cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([0, hook_height + bar_width]) cube(size=[bar_width, hanger_height - bar_width  * 2, bar_width]);
        translate([0, hook_height + hanger_height - bar_width]) cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([hanger_width - width, hook_height + hanger_height - bar_width - pin_height * 2]) cube(size=[bar_width, bar_width + pin_height * 2, bar_width]);
        translate([-pin_height * 2, 0]) cube(size=[pin_height * 2, bar_width, bar_width]);
    }
    sphere(r=fillet);
}
