#!/bin/bash

# nerdfont
export ICON_RCD='辶'
export ICON_MSC=''
export ICON_MTD='ﱝ '
export ICON_VOL=' '
export ICON_NIC=' '
export ICON_WFI=' '
export ICON_MEM=' '
export ICON_TMP=''
export ICON_PLG=' '
export ICON_BA0=' '
export ICON_BA1=' '
export ICON_BA2=' '
export ICON_BA3=' '
export ICON_BA4=' '
export ICON_DAT=' '

# 获取内存使用率
function get_memory() {
    free | awk 'NR == 2{printf "%i% ", ($2-$7)/$2*100}'
}

# 获取当期系统时间
function get_date_time() {
    date +'%m-%d %H:%M %a'
}

# 获取电量
function get_battery() {
    acpi | awk '{print $4}' | sed 's/,//g'
}

while [ true ]; do
	#date +'%Y-%m-%d %H:%M:%S %a'
	# xsetroot -name "$(date +"%m-%d %H:%M %a")"
    xsetroot -name " $ICON_WFI $ICON_BA4 $(get_battery) $ICON_MEM$(get_memory)$(get_date_time) "
	sleep 1.5
done
