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
    printf "%s %s" $ICON_MEM "$(free | awk 'NR == 2{printf "%i%%", ($2-$7)/$2*100}')"
}

# 获取当期系统时间
function get_date_time() {
    printf "%s %s" $ICON_DAT "$(date +'%m-%d %H:%M %a')"
}

# 获取网口速率
function get_net_speed() {
    for NIC in /sys/class/net/e*; do
        grep -q 'up' "$NIC/operstate" && awk '{
            printf "%s%s",ENVIRON["ICON_NIC"],($0 >= 1000 ? $0 / 1000 "G" : $0 "M")
        }' "$NIC/speed"
    done
}

# function get_battery_status() {
#     if [ acpi -b | grep -q Charging ]; then
#         printf "%s " $ICON_PLG
#     else

#     fi
# }

function get_battery_status() {
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
        printf "%i%%" $battery
    else
        printf "%s %i%%" $ICON_PLG 100
    fi
}

# function get_battery() {
#     battery=$(acpi | awk '{print $4}')
#     n=$(echo $battery | sed 's/%//g' | sed 's/,//g')
#     ICON=$ICON_PLG
#     if [ $n ]; then 
#         if [ $n -gt 75 ]; then
#             ICON=$ICON_BA4
#         elif [ $n -gt 50 ]; then
#             ICON=$ICON_BA3
#         elif [ $n -gt 25 ]; then
#             ICON=$ICON_BA2
#         elif [ $n -gt 10 ]; then
#             ICON=$ICON_BA1
#         else
#             ICON=$ICON_BA0
#         fi
#         printf "%s  %d%%" $ICON $n
#     else
#         printf "%s %d%%" $ICON_PLG 100
#     fi
# }

while [ true ]; do
	#date +'%Y-%m-%d %H:%M:%S %a'
	# xsetroot -name "$(date +"%m-%d %H:%M %a")"
    xsetroot -name " $(get_net_speed) $(get_battery_status) $(get_memory) $(get_date_time) "
	sleep 2
done
