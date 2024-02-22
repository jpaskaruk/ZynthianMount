 module clampraw() {
    //cube([25,25,3]);
    translate([0,0,9])
    cube([25,25,3]);
    translate([0,-4,0])
    cube([25,4,12]);
}


module clampTop() {
    rotate([0,0,180])
    translate([-25,0,-9])
    difference() {
        clampraw();
        translate([12.5,12.5,0])
        color("black")
        cylinder(12,d=3.6,$fn=100);
    }
}

module basic45support() {
    // basic board grab
    translate([0,70,0])
    clampTop();

    // base the rest of the way down from top
    cube([25,45,3]);

    // back and bottom supports
    rotate([45,0,0])
    union() {
        cube([25,99,3]);
        cube([25,3,30]);
    }

    // Rear vertical support
    translate([0,68,0])
    cube([25,6,72]);
}

rotate([0,-90,0])
basic45support();

translate([-100,70,0])
rotate([0,-90,180])
basic45support();



