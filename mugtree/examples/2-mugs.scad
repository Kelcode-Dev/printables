include <../config.scad>;

use <../modules/base.scad>;
use <../modules/body.scad>;
use <../modules/top.scad>;

base();

translate([0, 0, base_height - connector_length])
  body();
  

translate([0, 0, base_height + body_height - connector_length])
  top();
