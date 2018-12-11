difference() {
    hull() {
        cylinder(r=10, h=17, $fn=50);
        translate([0,0,17]) sphere(r=10, $fn=50);
        translate([0,-10,0]) cube([20,20,12]);
        translate([19,0,17]) rotate([0,90,0]) cylinder(r=10);
    }
    translate([0,0,-1]) rotate([0,0,90]) cylinder(r=8.9, h=11, $fn=6);
    cylinder(r=5, h=23, $fn=30);
    translate([10.8,0,5]) cylinder(r=3, h=42, $fn=50);
    translate([10.06,0.5,5]) rotate([0,0,45]) cube([20,2.1,22]);
    translate([8.4,-1.8,5]) rotate([0,0,-45]) cube([20,2.1,22]);
    translate([12,-5,5]) cube([2,10,6]);
    translate([9,0,10]) rotate([0,0,-45]) cube([15,15,37]);
}
