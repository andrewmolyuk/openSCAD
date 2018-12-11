height = 4;

cube(size=[39, 8, height]);
translate([3.5, 4, height]) cylinder(h=3, d=3.5, $fn = 15);
translate([35.5, 4, height]) cylinder(h=3, d=3.5, $fn = 15);
