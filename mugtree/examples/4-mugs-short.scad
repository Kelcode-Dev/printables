include <../config.scad>;

use <../modules/base.scad>;
use <../modules/body.scad>;
use <../modules/top.scad>;

base(text_content = "Time 4 Tea");

translate([0, 0, base_height - connector_length])
  body(arms=4);

translate([0, 0, base_height + body_height - connector_length])
  top();
