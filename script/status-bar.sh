#!/bin/dash

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
export ICON_DOWN=''
export ICON_UP=''

# 获取网络接收数据量
get_bytes() {
    # Find active network interface
    interface=$(ip route get 8.8.8.8 2>/dev/null| awk '{print $5}')
    if [ $interface ]; then
        line=$(grep $interface /proc/net/dev | awk '{print "rx_bytes="$2, "tx_bytes="$10}')
        eval $line
        time=$(date +%s%N)
        flag=ok
    fi
}

# 网速单位转换KB -> MB
trans() {
    if test $1 -gt 1024; then
        result=$(echo "scale=1; $1/1024" | bc)MB/s
    else
        result=${1}KB/s
    fi
}

# 计算当前实时网速 依赖bc计算器
get_velocity() {
    get_bytes
    if [ $flag ]; then
        rx_prev=$rx_bytes
        tx_prev=$tx_bytes
        time_prev=$time
        get_bytes
        if [ $flag ]; then
            rx_next=$rx_bytes
            tx_next=$tx_bytes
            time_next=$time
            time_diff=$(($time_next - $time_prev))
            rx=$(echo "1000000000*($rx_next-$rx_prev)/1024/$time_diff" | bc)
            tx=$(echo "1000000000*($tx_next-$tx_prev)/1024/$time_diff" | bc)
            trans $rx
            printf "$ICON_DOWN %s " $result
            trans $tx
            printf "$ICON_UP %s " $result
        fi
    fi
}

# 获取网口速率
get_net_status() {
    for NIC in /sys/class/net/e*; do
        grep -q 'up' "$NIC/operstate" && awk '{
            printf "%s%s ",ENVIRON["ICON_NIC"],($0 >= 1000 ? $0 / 1000 "G" : $0 "M")
        }' "$NIC/speed"
    done
}

# 获取音量
get_volume() {
    amixer get Master | awk 'END {
        ICO = $NF == "[off]" ? ENVIRON["ICON_MTD"] : ENVIRON["ICON_VOL"]
        match($0, / \[([0-9]+%)\] /, m)
        VOL = m[1]
        printf "%s%s ", ICO, VOL
    }'
}

# 获取电池信息
get_battery() {
    info=$(acpi -b | sed 's/,//g' | sed 's/%//g')
    if [ "$info" ]; then
        state=$(echo $info | awk '{print $3}')
        battery=$(echo $info | awk '{print $4}')
        if [ $state = "Charging" ]; then
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
}

# 获取内存使用率
get_memory() {
    printf "%s %s " $ICON_MEM "$(free | awk 'NR == 2{printf "%i%%", ($2-$7)/$2*100}')"
}

# 获取当期系统时间
get_date() {
    printf "%s " "$(date +'%m-%d %a %H:%M')"
}

status_bar() {
    # 预留空格
    printf " "
    get_velocity
    # get_net_status
    # get_volume
    get_battery
    get_memory
    get_date
}

# 两秒刷新一次状态栏
while [ true ]; do
    xsetroot -name "$(status_bar)"
	sleep 2
done
