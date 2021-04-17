#!/bin/bash

# 虚拟机设置分辨率1600x900 1920x1080
name900=`cvt 1600 900 | awk 'NR==2{print $2}'`
mode900=`cvt 1600 900 | awk 'NR==2{$1="";print $0}'`
name1080=`cvt 1920 1080 | awk 'NR==2{print $2}'`
mode1080=`cvt 1920 1080 | awk 'NR==2{$1="";print $0}'`

echo $name900
echo $mode900
echo $name1080
echo $mode1080

# 添加1600x900分辨率
xrandr --newmode $mode900
xrandr --addmode Virtual1 $name900
# 添加1920x1080分辨率
xrandr --newmode $mode1080
xrandr --addmode Virtual1 $name1080
# 设置分辨率
xrandr --output Virtual1 --mode $name900

# xrandr --newmode "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
# xrandr --addmode Virtual1 "1600x900_60.00"
# xrandr --output Virtual1 --mode "1600x900_60.00"
# xrandr --newmode "1920x1080_60.00" 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode Virtual1 "1920x1080_60.00"
# xrandr --output Virtual1 --mode "1920x1080_60.00"
