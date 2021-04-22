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

function get_battery() {
    battery=$(acpi | awk '{print $4}')
    n=$(echo $battery | sed 's/%,//g')
    if [ $n ]; then 
        n2=$(echo $battery | sed 's/,//g')
        if [ $n -gt 75 ]; then
            echo "$ICON_BA4 $n2"
        elif [ $n -gt 50 ]; then
            echo "$ICON_BA3 $n2"
        elif [ $n -gt 25 ]; then
            echo "$ICON_BA2 $n2"
        elif [ $n -gt 10 ]; then
            echo "$ICON_BA1 $n2"
        else
            echo "$ICON_BA0 $n2"
        fi
    else
        echo "$ICON_BA4 100%"
    fi
}

# 获取电量
function bat() {
    acpi | awk '{print $4}' | sed 's/,//g'
}

while [ true ]; do
	#date +'%Y-%m-%d %H:%M:%S %a'
	# xsetroot -name "$(date +"%m-%d %H:%M %a")"
    xsetroot -name " $ICON_WFI $(get_battery) $ICON_MEM$(get_memory)$(get_date_time) "
	sleep 2
done
