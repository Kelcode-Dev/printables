include <../config.scad>;

use <../modules/base.scad>;
use <../modules/body.scad>;
use <../modules/top.scad>;

cups = 6;
levels = 3;

base(text_content = "Time for Tea");


for (i = [0: levels - 1]) {
  translate([0, 0, base_height + (body_height * i) - connector_length])
  rotate([0, 0, (i % 2) ? 0 : 90])
  body();
}

translate([0, 0, base_height + (body_height * levels) - connector_length])
  top();
