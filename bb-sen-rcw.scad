include <bitbeam-lib/bitbeam-lib.scad>

/*
translate([0, 0, 1.2])
    color([0.6, 0.6, 0.6, 0.6])
    import("stl/rcw-0001.stl");
*/

difference(){
    for(x=[-1, 1]){
        for(y=[-1, 1]){
            translate([x*27/2, y*13.5/2, -2.3/2])
                cylinder(d=5, h=3, center=true);
        }
    }
    for(x=[-1, 1]){
        for(y=[-1, 1]){
            translate([x*27/2, y*13.5/2, -2.3/2])
                cylinder(d=1.5, h=3.1, center=true);
        }
    }
}

difference(){
    cube([unit*4, unit*3, unit], center=true);

    translate([0, 0, 0.76])
        cube([32.01, unit*3-3, unit-1.5], center=true);

    translate([0, unit+0.01, -unit/2+2.49])
        cube([12, 8, 5], center=true);
}

translate([unit, -unit*2, 0])
    rotate([0, 0, 90])
    cube_arm(1);
translate([-unit, -unit*2, 0])
    rotate([0, 0, 90])
    cube_arm(1);

translate([-unit*2.5, -unit, 0])
    cube_arm(1);
translate([-unit*2.5, unit, 0])
    cube_arm(1);
translate([unit*2.5, -unit, 0])
    cube_arm(1);
translate([unit*2.5, unit, 0])
    cube_arm(1);