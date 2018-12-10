#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/mc2-feet.stl mc2-feet.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/mc2-feet.png --imgsize=320,240 --colorscheme=Tomorrow --camera=5,0,18,125,0,25,125 mc2-feet.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/mc2-feet-pla.gcode output/mc2-feet.stl
