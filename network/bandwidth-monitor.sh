#!/bin/bash





if [ -d /sys/class/net/wlan0 ] ; then
 
 NETWORK="wlan0"
 echo "My network is $NETWORK"

elif [ -d /sys/class/net/eth0 ] ; then 
 
 NETWORK="eth0"
 echo "My network is $NETWORK"

else 

 echo "sorry, cant find network"
 exit 1

fi

first_received=$(cat /sys/class/net/$NETWORK/statistics/rx_bytes)
sleep 3 
second_received=$(cat /sys/class/net/$NETWORK/statistics/rx_bytes)

bytes_per_sec=$(( ($second_received - $first_received) / 3 ))

kb_per_sec=$(( $bytes_per_sec / 1000 ))

echo "$kb_per_sec kB/s"