#!/bin/bash
name1080=`cvt 1920 1080 | awk 'NR==2{print $2}'`
xrandr --output Virtual1 --mode $name1080
~/script/picture.sh
