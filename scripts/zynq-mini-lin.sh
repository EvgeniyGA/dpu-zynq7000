#!/bin/sh
cp -r ../petalinux/zynq-mini .
cd zynq-mini-lin
petalinux-config --get-hw-description=../
