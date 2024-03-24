union(){
    translate([0, 0, -90]) {
        difference() {
            cylinder(h = 100, d = 20, $fn = 100);

            cylinder(h = 100, d = 16, $fn = 100);
                
            cube([10, 10, 100]);
            rotate([0, 0, 45]) {
                cube([10, 10, 100]);
            }
        }
    }

    translate([0, 0, 10]) {
        difference() {
            cylinder(h = 46, d = 20, $fn = 100);
            cylinder(h = 46, d = 16, $fn = 100);
            
            cube([10, 10, 20]);
            rotate([0, 0, 45]) {
                cube([10, 10, 20]);
            }
            
            translate([6.2, -7.8, 10]){    
                rotate([0, 0, 67.5]) {
                    cube([17.4, 17.4, 46]);
                }
            }
            
            translate([9.2, -9.05, 10]){    
                rotate([0, 0, 67.5]) {
                    cube([17.4, 17.4, 46]);
                }
            }
            
            translate([4.2, -7, 10]){    
                rotate([0, 0, 67.5]) {
                    cube([17.4, 17.4, 46]);
                }
            }
        }
    }
    
    translate([-2.5, -16, -25]) {
        rotate([0, 0, 110]) {
            cube([20, 2, 130], center = true);
        }
    }
}