#!/bin/bash
name900=`cvt 1600 900 | awk 'NR==2{print $2}'`
xrandr --output Virtual1 --mode $name900
~/script/picture.sh
