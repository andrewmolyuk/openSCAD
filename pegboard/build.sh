#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/pegboard-1.png --imgsize=320,240 --colorscheme=Tomorrow --camera=0,0,0,325,0,0,100 --render pegboard-1.scad

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/pegboard-1.stl pegboard-1.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/pegboard-2.stl pegboard-2.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/pegboard-3.stl pegboard-3.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/pegboard-1-pla.gcode output/pegboard-1.stl
/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/pegboard-2-pla.gcode output/pegboard-2.stl
/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/pegboard-3-pla.gcode output/pegboard-3.stl
