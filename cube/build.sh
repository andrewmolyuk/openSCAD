#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/cube.stl cube.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/cube.png cube.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/cube-pla.gcode output/cube.stl
/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-abs.ini --output output/cube-abs.gcode output/cube.stl
