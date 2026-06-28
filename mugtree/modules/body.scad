include <../config.scad>

use <arm.scad>;
use <connector.scad>;

module body(arms = arms_per_level)
{
  difference()
  {
    union()
    {
      // Main column
      cylinder(
        h = body_height,
        d = column_diameter
      );

      // Top connector
      translate([0, 0, body_height])
        connector();

      // Arms
      translate([0, 0, arm_height - arm_offset])
      {
        for (i = [0 : arms - 1])
        {
          rotate([0, 0, i * (360 / arms)])
            translate([column_diameter / 3.5, 0, 0])
              arm();
        }
      }
    }

    // Bottom socket
    socket();
  }
}

body();
