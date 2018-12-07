width = 85;
top_depth = 50;
bottom_depth = 35;
height = 40;
thickness = 2;

module box() {
    cube([width, bottom_depth, thickness]);
    
    translate([0, thickness, 0]) 
        rotate([90,0,0]) 
        cube([width, height, thickness]);
    
    rotate([0,0,90]) 
        rotate([90,0,0]) 
        linear_extrude(height = thickness) 
        polygon(points=[[0,0],[bottom_depth,0],[top_depth+bottom_depth,height*2/3],[top_depth,height],[0,height]]);
    
    translate([width-thickness, 0, 0]) 
        rotate([0,0,90]) 
        rotate([90,0,0]) 
        linear_extrude(height = thickness) 
        polygon(points=[[0,0],[bottom_depth,0],[top_depth+bottom_depth,height*2/3],[top_depth,height],[0,height]]);
    
    translate([0, bottom_depth, 0]) 
        rotate([-20,0,0]) 
        rotate([90,0,0]) 
        cube([width, height+1.835, thickness]);
        
    translate([0, 75, height*2/3]) 
        cube([width, 10, 6]);
}

box();

translate([42.5, 75, height-thickness]) 
    difference() {
        cylinder(h=thickness, r1=100, r2=100);
        translate([-100, -80, -1]) cube([220, 200, 4]);
        translate([50,-100,-1]) cube([10,100,4]);
        translate([-60,-100,-1]) cube([10,100,4]);
    }

translate([0, -5, height-thickness])
    cube([width, 5, thickness]);
