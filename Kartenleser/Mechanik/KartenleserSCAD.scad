difference(){
  minkowski(){
    cube([100-4,70-4,9-1]);
    cylinder(r=2,h=1,$fn=64);
  }
  translate([1,1,3])
    cube([94,64,6]);
}