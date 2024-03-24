$fa = 1;
$fs = 0.5;

grosor_exterior = 4;
grosor_interior = 2;

ancho_tope_fondo = 4;
prof_tope_fondo = 2;

ancho_ampli = 110;
prof_ampli = 85;
alto_ampli = 35;

difference() {
    cube([ancho_ampli + grosor_exterior * 2, prof_ampli + prof_tope_fondo, alto_ampli + grosor_interior]);
    
    translate([grosor_exterior, 0, grosor_interior]){
        #cube([ancho_ampli,prof_ampli,alto_ampli]);
    }
    
    translate([grosor_exterior + ancho_tope_fondo, prof_ampli, grosor_interior]) {
        #cube([ancho_ampli - ancho_tope_fondo * 2, prof_tope_fondo, alto_ampli]);
    }
}

ancho_sujeccion = 11;

diametro_tornillo = 4;

translate([-ancho_sujeccion, 0, alto_ampli - (grosor_exterior - grosor_interior)]) {
    difference() {
        cube([ancho_sujeccion, prof_ampli + prof_tope_fondo , grosor_exterior]);
        
        translate([ancho_sujeccion/2, 15, 0]) {
            #cylinder(h=grosor_exterior + 3,r=diametro_tornillo/2);
        }
        
        translate([ancho_sujeccion/2, prof_ampli - 15, 0]) {
            #cylinder(h=grosor_exterior + 3,r=diametro_tornillo/2);
        }
    }
}

translate([ancho_ampli + grosor_exterior * 2, 0 , alto_ampli - (grosor_exterior - grosor_interior)]) {
    difference() {
        cube([ancho_sujeccion, prof_ampli + prof_tope_fondo, grosor_exterior]);
        
        translate([ancho_sujeccion/2, 15, 0]) {
            #cylinder(h=grosor_exterior + 3,r=diametro_tornillo/2);
        }
        
        translate([ancho_sujeccion/2, prof_ampli - 15, 0]) {
            #cylinder(h=grosor_exterior + 3,r=diametro_tornillo/2);
        }
    }
}



ancho_dac = 110;
prof_dac = 85;
alto_dac = 33;

translate([0,0, -alto_dac - grosor_interior]){
    difference() {
        cube([ancho_dac + grosor_exterior * 2, prof_dac + prof_tope_fondo, alto_dac + grosor_interior]);
        
        translate([grosor_exterior, 0, grosor_interior]){
            #cube([ancho_dac, prof_dac, alto_dac]);
        }
        
        translate([grosor_exterior + ancho_tope_fondo, prof_dac, grosor_interior]) {
            #cube([ancho_dac - ancho_tope_fondo * 2, prof_tope_fondo, alto_dac]);
        }
    }
}

ancho_switch = 95;
prof_switch = 67;
alto_switch = 22;

ancho_conector_cable = 9;
d_cable = 6;

translate([(ancho_dac - (ancho_switch + ancho_conector_cable)) / 2, prof_dac - prof_switch, -alto_dac - alto_switch - grosor_interior - grosor_exterior]) {
    
    difference() {
        
        cube([(ancho_switch + ancho_conector_cable) + grosor_exterior * 2, prof_switch + prof_tope_fondo, alto_switch + grosor_exterior]);
        
        translate([grosor_exterior, 0, grosor_exterior]) {
            #cube([ancho_switch + ancho_conector_cable, prof_switch, alto_switch]);
        }
        
        translate([grosor_exterior + ancho_tope_fondo, 0, 0]) {
            #cube([ancho_switch - ancho_tope_fondo * 2, prof_switch + prof_tope_fondo, alto_switch + grosor_exterior]);
        }
        
        translate([grosor_exterior + ancho_switch, prof_switch, grosor_exterior]) {
            #cube([ancho_conector_cable, prof_tope_fondo, alto_switch]);
        }
    }
    
    translate([grosor_exterior + ancho_switch, 0, grosor_exterior]) {
        cube([ancho_conector_cable - d_cable, 10, alto_switch - d_cable]);
    }
}

//translate([((ancho_dac - (ancho_switch + ancho_conector_cable)) / 2) + 4,-1,-65])
//cube([95, 10, 10]);