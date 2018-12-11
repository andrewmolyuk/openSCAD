difference() {
    hull() {
        cylinder(r=10, h=32, $fn=50);
        translate([0,0,32]) sphere(r=10, $fn=50);
        translate([0,-10,0]) cube([20,20,32]);
        translate([19,0,32]) rotate([0,90,0]) cylinder(r=10);
    }
    translate([0,0,-1]) rotate([0,0,90]) cylinder(r=8, h=9, $fn=6);
    cylinder(r=4, h=32, $fn=30);
    translate([10,0,5]) cylinder(r=2.5, h=42, $fn=30);
    translate([9.45,0,5]) rotate([0,0,45]) cube([20,2.1,37]);
    translate([8,-1.5,5]) rotate([0,0,-45]) cube([20,2.1,37]);
    translate([10.5,-4,5]) cube([2,8,6]);
    translate([9,0,10]) rotate([0,0,-45]) cube([15,15,32]);
}
