union(){
    difference() {
        cylinder(h = 146, d = 20, $fn = 100);
        cylinder(h = 146, d = 16, $fn = 100);
        
        cube([10, 10, 120]);
        rotate([0, 0, 30]) {
            cube([10, 10, 120]);
        }
        
        translate([9.2, -9.05, 110]){    
            rotate([0, 0, 67.5]) {
                cube([17.4, 17.4, 46]);
            }
        }
        
        translate([4.2, -7, 110]){    
            rotate([0, 0, 67.5]) {
                cube([17.4, 17.4, 46]);
            }
        }
    }
    
    translate([-9.65, -13.1, 65]) {
        rotate([0, 0, 25]) {
            cube([20, 2, 130], center = true);
        }
    }
}
