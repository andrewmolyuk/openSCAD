#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/birds-feeder.stl birds-feeder.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/birds-feeder.png --imgsize=320,240 --colorscheme=Tomorrow --camera=20,20,0,50,0,120,320 birds-feeder.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/birds-feeder-pla.gcode output/birds-feeder.stl
