#!/bin/sh
cp -r ../petalinux/zynq-mini-lin .
cd zynq-mini-lin
petalinux-config --get-hw-description=../
