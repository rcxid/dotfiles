#!/bin/bash

rx_prev=0
tx_prev=0
rx_next=0
tx_next=0

data=`cat /proc/net/dev | awk '/ens33/{print $0}'`
rx_prev=`echo $data | awk '{print $2}'`
tx_prev=`echo $data | awk '{print $10}'`
data=`cat /proc/net/dev | awk '/ens33/{print $0}'`
rx_next=`echo $data | awk '{print $2}'`
tx_next=`echo $data | awk '{print $10}'`

echo $rx_prev
echo $tx_prev
echo $rx_next
echo $tx_next

rx=`expr $rx_next - $rx_prev`
tx=`expr $tx_next - $tx_prev`
echo $rx
echo $tx
