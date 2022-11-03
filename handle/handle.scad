$fn = 50;

r = 70;
w = 43;
a = asin(w/r);

difference() {
    union() {
        minkowski() {
            translate([0,0,2]) union() {
                rotate_extrude(angle=-a, $fn=200) translate([r-1.8,0,0])square([1.8,6]);
                rotate_extrude(angle=a, $fn=200) translate([r-1.8,0,0])square([1.8,6]);

                translate([r*cos(a)-6,w-6,0]) hull() {cube(6); translate([8,0,0]) cube([1,1,6]);}
                translate([r*cos(a)-6,-w,0]) hull() {cube(6); translate([8,5,0]) cube([1,1,6]);}
            }
            sphere(2);
        }
        translate([r*cos(a)-10,40-5,0]) base();
        translate([r*cos(a)-10,-40-5,0]) base();
    }
    holes();
}

module base() {
    translate([2,2,2]) rotate([90,0,90]) hull() {
        cylinder(2, 2, 2);
        translate([6,0,0]) cylinder(2, 2, 2);
        translate([0,6,0]) cylinder(2, 2, 2);
        translate([6,6,0]) cylinder(2, 2, 2);
    }
}

module holes() {
    translate([r*cos(a)+2,40,5]) rotate([-90,0,90]) cylinder(11, 1.8, 1.8);
    translate([r*cos(a)+2,-40,5]) rotate([-90,0,90]) cylinder(11, 1.8, 1.8);
}