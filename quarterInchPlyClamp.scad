module clamp() {
    cube([25,25,3]);
    translate([0,0,9])
    cube([25,10,3]);
    translate([0,-4,0])
    cube([25,4,24]);
}

rotate([90,0,0])
difference() {
    clamp();
    translate([12.5,12.5,0])
    color("black")
    cylinder(12,d=3.6,$fn=100);
}
