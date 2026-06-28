# Mug Tree

A modular, stackable OpenSCAD design for a decorative mug tree — a vertical stand for hanging coffee mugs.

## Overview

The Mug Tree is built from interchangeable modules that stack vertically via male/female connectors:

- **Base** — A flat, chamfered disc with a front-cutout for custom text labeling
- **Body** — A central column with angled arms radiating outward for hanging mugs
- **Top** — A flanged dome that caps the stack

Multiple body sections can be stacked to increase capacity, with each level rotated 90° from the last for balanced arm placement.

## Project Structure

```bash
mugtree/
├── config.scad          # Global parameters (dimensions, print settings, layout)
├── modules/
│   ├── base.scad        # Base disc with text label cutout
│   ├── body.scad        # Central column with mug-hanging arms
│   ├── arm.scad         # Single angled arm with shoulder and tip
│   ├── connector.scad   # Male connector / female socket for stacking
│   └── top.scad         # Top dome and flange cap
├── examples/
│   ├── 2-mugs.scad      # Base + 1 body section (2 arms)
│   ├── 4-mugs.scad      # Base + 2 body sections (8 arms)
│   ├── 4-mugs-short.scad
│   ├── 6-mugs.scad      # Base + 3 body sections (12 arms)
│   ├── 8-mugs.scad      # Base + 4 body sections (16 arms)
│   ├── 8-mugs-short.scad
├── images/              # Rendered images / screenshots
└── stl/                 # Exported STL files
```

## Customization

All dimensions and parameters are centralized in `config.scad`. Key adjustable values:

| Parameter | Default | Description |
| --- | --- | --- |
| `levels` | 1 | Number of body sections to stack |
| `arms_per_level` | 2 | Number of arms per body section |
| `base_diameter` | 200 mm | Base disc diameter |
| `base_height` | 15 mm | Base disc height |
| `body_height` | 120 mm | Central column height |
| `arm_length` | 85 mm | Arm reach from column |
| `arm_angle` | 60° | Arm upward tilt |
| `connector_diameter` | 30 mm | Stacking connector size |
| `wall_thickness` | 3 mm | Print wall thickness |
| `$fn` | 100 | Render resolution |

### Text Label

The base features a raised text label in the front cutout. Customize with:

```scad
text_label = "My Mug Tree";
text_font  = "Brush Script MT";
text_size  = 22;
```

## Building

Print the following modules and assemble by stacking:

1. **Base** — `modules/base.scad`
2. **Body section(s)** — `modules/body.scad` (one per level of cups you want)
3. **Top** — `modules/top.scad`

Each body section adds `arms_per_level` cups. Rotate each successive body 90° during assembly for balanced arm placement (as demonstrated in the examples).

| Configuration  | Parts to print                    | Capacity |
| -------------- | --------------------------------- | -------: |
| 4 mugs         | 1× Base, 1× Body (4 arms), 1× Top |   4 mugs |
| 8 mugs         | 1× Base, 2× Body (4 arms), 1× Top |   8 mugs |
| 8 mugs (2-arm) | 1× Base, 4× Body (2 arms), 1× Top |   8 mugs |
| 12 mugs        | 1× Base, 3× Body (4 arms), 1× Top |  12 mugs |

To preview a full assembled tree, open an example file in OpenSCAD (e.g. `examples/2-mugs.scad`) and press **F5**.

## Printing

- **Wall thickness:** 3 mm (configured in `config.scad`)
- **Orientation:** Print base flat, body and top upright
- **Supports:** May be needed for the top dome depending on printer
- **Connector clearance:** 0.2 mm per side (adjust `connector_clearance` if fit is too tight/loose)
- **Body prints**: add a brim when printing the body to reduce instability at higher lengths
