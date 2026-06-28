include <../config.scad>;

use <../modules/base.scad>;
use <../modules/body.scad>;
use <../modules/top.scad>;

cups = 8;
levels = 2;
arms_per_level = 4;

base();

for (i = [0: levels - 1]) {
  translate([0, 0, base_height + (body_height * i) - connector_length])
  rotate([0, 0, (i % 2) ? 0 : 90])
  body(arms=arms_per_level);
}

translate([0, 0, base_height + (body_height * levels) - connector_length])
  top();
