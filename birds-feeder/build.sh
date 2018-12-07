#!/bin/bash

cd "$(dirname "$0")"
mkdir -p output

/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/birds-feeder.stl birds-feeder.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o output/birds-feeder.png birds-feeder.scad

/Applications/Slic3r.app/Contents/MacOS/Slic3r --no-gui --load slic3r-pla.ini --output output/birds-feeder-pla.gcode output/birds-feeder.stl
