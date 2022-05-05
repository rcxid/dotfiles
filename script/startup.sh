#!/bin/bash

# 运行输入法
~/script/boot/fcitx5.sh
# 设置屏幕分辨率
# ~/script/screen.sh
# 壁纸设置
~/script/boot/picture.sh
# 窗口通明
~/script/boot/picom.sh
# dwm bar
~/script/boot/bar.sh
# 自动锁定小键盘区
# ~/script/numlockx
# 启动桌面
exec dwm
# exec dbus-launch leftwm
