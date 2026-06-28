include <../config.scad>;

module arm()
{
  union()
  {
    // Horizontal shoulder
    cylinder(
      h = arm_shoulder_length,
      d = arm_diameter
    );

    // Angled arm
    translate([0, 0, arm_shoulder_length])
    rotate([0, arm_angle, 0])
    {
      cylinder(
        h = arm_length,
        d1 = arm_diameter,
        d2 = arm_tip_diameter
      );

      translate([0, 0, arm_length])
        sphere(d = arm_tip_diameter);
    }
  }
}

arm();
