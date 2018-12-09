#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/towel-hanger.stl towel-hanger.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/towel-hanger.png --imgsize=320,240 --colorscheme=Tomorrow --camera=10,15,0,40,0,335,125  towel-hanger.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/towel-hanger-pla.gcode output/towel-hanger.stl
