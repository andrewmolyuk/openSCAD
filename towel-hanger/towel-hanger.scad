width = 5;
fillet = 1;
hanger_width = 18.1;
hanger_height = 24.5;
hook_height = 8;
pin_height = 2;

bar_width = width - fillet * 2;
minkowski() {
    union() {
        cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([hanger_width - width, 0]) cube(size=[bar_width, hook_height + bar_width + pin_height, bar_width]);
        translate([0, hook_height]) cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([0, hook_height + bar_width]) cube(size=[bar_width, hanger_height - bar_width  * 2, bar_width]);
        translate([0, hook_height + hanger_height - bar_width]) cube(size=[hanger_width - width, bar_width, bar_width]);
        translate([hanger_width - width, hook_height + hanger_height - bar_width - pin_height]) cube(size=[bar_width, bar_width + pin_height, bar_width]);
   }
   sphere(r=fillet, $fn=30);
}
