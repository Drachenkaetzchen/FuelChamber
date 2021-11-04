$fn = 30;

// 1 for the original hartk PCB to avoid the screws scratching up traces
// 3 as spacer between the PCB and the extruder

height=3;

holePos1_x = 64.89;
holePos1_y = 58.92;

holePos2_x = 82.73;
holePos2_y = 73.26;

holeDiam = 3.3;
outerHoleDiam = 6;




difference () {
mkholes(outerHoleDiam);
mkholes(holeDiam);
}

module mkholes (diam) {
translate([holePos1_x, holePos1_y]) { 
cylinder(d=diam,h=height);
}

translate([holePos2_x, holePos2_y]) { 
cylinder(d=diam,h=height);
}
}