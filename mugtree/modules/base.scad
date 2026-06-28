include <../config.scad>;
include <connector.scad>;

module base_profile()
{
  circle(d = base_diameter);
}

module base_solid()
{
  union()
  {
    // Main body
    linear_extrude(height = base_height - base_chamfer)
      base_profile();

    // Top chamfer
    translate([0, 0, base_height - base_chamfer])
      linear_extrude(
        height = base_chamfer,
        scale = (base_diameter - (base_chamfer * 2)) / base_diameter
      )
        base_profile();
  }
}

module base(text_content = text_label)
{
  difference()
  {
    // Base with chamfer
    base_solid();

    // Front flat
    translate([
      -base_cutout_width / 2,
      -base_radius,
      -1
    ])
      cube([
        base_cutout_width,
        base_cutout_depth,
        base_height + 2
      ]);
  }

  // Connector socket
  translate([0, 0, base_height])
    connector();

  // Raised front text
  translate([
    0,
    -(base_radius) + text_offset_y,
    text_offset_z
  ])
    rotate([90, 0, 0])
      linear_extrude(height = text_height)
        text(
          text_content,
          font = text_font,
          size = text_size,
          halign = "center"
        );
}

base();
