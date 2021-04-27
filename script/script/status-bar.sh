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

function status_bar() {

    # 预留空格
    printf " "

    # 获取网口速率
    for NIC in /sys/class/net/e*; do
        grep -q 'up' "$NIC/operstate" && awk '{
            printf "%s%s ",ENVIRON["ICON_NIC"],($0 >= 1000 ? $0 / 1000 "G" : $0 "M")
        }' "$NIC/speed"
    done

    # volume
    amixer get Master | awk 'END {
        ICO = $NF == "[off]" ? ENVIRON["ICON_MTD"] : ENVIRON["ICON_VOL"]
        match($0, / \[([0-9]+%)\] /, m)
        VOL = m[1]
        printf "%s%s ", ICO, VOL
    }'

    # 获取电池信息
    info=$(acpi -b | sed 's/,//g' | sed 's/%//g')
    if [ "$info" ]; then
        status=$(echo $info | awk '{print $3}')
        battery=$(echo $info | awk '{print $4}')
        if [ $status == "Charging" ]; then
            printf "%s " $ICON_PLG
        else
            if [ $battery -gt 75 ]; then
                printf "%s  " $ICON_BA4
            elif [ $battery -gt 50 ]; then
                printf "%s  " $ICON_BA3
            elif [ $battery -gt 25 ]; then
                printf "%s  " $ICON_BA2
            elif [ $battery -gt 10 ]; then
                printf "%s  " $ICON_BA1
            else
                printf "%s  " $ICON_BA0
            fi
        fi
        printf "%i%% " $battery
    else
        printf "%s %i%% " $ICON_PLG 100
    fi

    # 获取内存使用率
    printf "%s %s " $ICON_MEM "$(free | awk 'NR == 2{printf "%i%%", ($2-$7)/$2*100}')"

    # 获取当期系统时间
    printf "%s " "$(date +'%m-%d %a %H:%M')"
}

while [ true ]; do
    xsetroot -name "$(status_bar)"
	sleep 2
done
