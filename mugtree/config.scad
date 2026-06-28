//
// Mug Tree Configuration
//

// ============================================================================
// Rendering
// ============================================================================

$fn = 100;

// ============================================================================
// Layout
// ============================================================================

// Number of body sections
levels = 1;

// Number of arms per body section
arms_per_level = 2;

// ============================================================================
// Base
// ============================================================================

base_diameter = 200;
base_radius = base_diameter / 2;
base_height = 15;
base_chamfer = 10;

base_cutout_width = 200;
base_cutout_depth = 35;

centre_hole_diameter = 30;

text_label = "Coffee Time";
text_font = "Brush Script MT";
text_size = 22;
text_height = 5;
text_offset_y = (base_cutout_depth + (text_height / 2));
text_offset_z = text_size / 2;

// ============================================================================
// Centre Column
// ============================================================================

column_diameter = 48;
body_height = 145;

// ============================================================================
// Arms
// ============================================================================

arm_height = 70;
arm_length = 85;
arm_angle = 60;

arm_diameter = 18;
arm_tip_diameter = arm_diameter / 2;

arm_shoulder_length = 12;
arm_offset = 10;

// ============================================================================
// Connectors
// ============================================================================

connector_diameter = 30;
connector_length = 15;

connector_socket_depth = connector_length;
connector_clearance = 0.2;

connector_chamfer = 1;

// ============================================================================
// Top Dome
// ============================================================================
top_collar_height = 8;
top_collar_diameter = column_diameter + 4;

top_flange_height = 6;
top_flange_diameter = column_diameter + 6;
top_dome_diameter = top_flange_diameter;
top_dome_scale = 0.75;

// ============================================================================
// Printing
// ============================================================================

wall_thickness = 3;
