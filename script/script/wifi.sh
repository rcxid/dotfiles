#!/bin/bash
nohup wpa_supplicant -c /home/vision/script/conf/wlan_realme.conf -i wlp4s0 > /dev/null 2>&1 &
