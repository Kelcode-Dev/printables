include <../config.scad>;

module male_connector()
{
    cylinder(
        h = connector_length,
        d = connector_diameter
    );
}

module female_socket()
{
    translate([0, 0, -0.1])
        cylinder(
            h = connector_socket_depth + 0.1,
            d = connector_diameter + (connector_clearance * 2)
        );
}
