include <../config.scad>
use <connector.scad>;

module top()
{
  difference()
  {
    union()
    {
      // Flange
      cylinder(
        h = top_flange_height,
        d = top_flange_diameter
      );

      // Dome
      translate([0, 0, top_flange_height])
        scale([1, 1, top_dome_scale])
          intersection()
          {
            sphere(d = top_dome_diameter);

            translate([
              -top_dome_diameter,
              -top_dome_diameter,
              0
            ])
            cube([
              top_dome_diameter * 2,
              top_dome_diameter * 2,
              top_dome_diameter
            ]);
          }
    }

    // Bottom female socket
    socket();
  }
}

top();
