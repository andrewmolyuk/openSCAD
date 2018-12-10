#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/mc2-spacer.stl mc2-spacer.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/mc2-spacer.png --imgsize=320,240 --colorscheme=Tomorrow mc2-spacer.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/mc2-spacer-pla.gcode output/mc2-spacer.stl
