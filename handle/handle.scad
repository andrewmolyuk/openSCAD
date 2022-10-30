$fn=50;

handle();

module handle() {
    difference() {
        union() {
            translate([2,2,2]) minkowski() {
                union() {
                    stands();
                    bar();
                }
                sphere(2);
            }
            base();
            translate([80,0,0]) base();
        }
        holes();
    }
}

module stands() {
    hull() {
        cube ([6,7,6]);
        translate([5,9,0]) cube ([1,1,6]);
    }
    translate([80,0,0]) hull() {
        cube ([6,7,6]);
        translate([0,9,0]) cube ([1,1,6]);
    }
}

module bar() {
    translate([43,-47.855, 0]) rotate([0,0,90]) union() {
        rotate_extrude(angle=-38.093, $fn=200) translate([67.9,0,0])square([1.8,6]);
        rotate_extrude(angle=38.093, $fn=200) translate([67.9,0,0])square([1.8,6]);
    }
}

module base() {
    translate([2,2,2]) rotate([90,0,0]) hull() {
        cylinder(2, 2, 2);
        translate([6,0,0]) cylinder(2, 2, 2);
        translate([0,6,0]) cylinder(2, 2, 2);
        translate([6,6,0]) cylinder(2, 2, 2);
    }
}

module holes() {
    translate([5,-2,5]) rotate([-90,0,0]) cylinder(10, 1.8, 1.8);
    translate([85,-2,5]) rotate([-90,0,0]) cylinder(10, 1.8, 1.8);
}
