#!/bin/sh
mkdir -p zynq-mini-xsa/
cp ../board/zynq-mini/zynq-mini.tcl zynq-mini-xsa/
cp ../board/zynq-mini/sys.tcl zynq-mini-xsa/
cd zynq-mini-xsa/
vivado -nolog -nojournal -mode batch -source ./zynq-mini.tcl
