# OpenSCAD Designs

A collection of 3D-printable models designed in [OpenSCAD](https://openscad.org/).

[Articles & build logs →](https://kelcode.co.uk/tag/printables)

> **Note:** This repository is a work in progress and will be populated with more projects over time

## Projects

| Project | Description |
| ------------------- | ------------- |
| [mugtree](mugtree/) | Modular, stackable mug tree — a vertical stand for hanging coffee mugs |

## Getting Started

### Prerequisites

- [OpenSCAD](https://openscad.org/downloads.html) (2021.01 or later recommended)

### Rendering a Design

1. Open any `.scad` file in OpenSCAD
2. Press **F5** to preview
3. **F6** to compile with smoothness
4. Press **F7** to export as STL

### Module-Based Projects

Some projects use a modular design with shared constants and reusable modules. To build a new configuration:

```openscad
include <config.scad>    // shared parameters
// ... define your layout and render
```

See the individual project READMEs for detailed usage.

## License

This project is licensed under the [MIT License](LICENSE).
