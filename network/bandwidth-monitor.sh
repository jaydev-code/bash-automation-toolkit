#!/bin/bash



if [ -d /sys/class/net/wlan0 ] ; then
 
 NETWORK="wlan0"
 echo "mMy network is $NETWORK"

elif [ -d /sys/class/net/eth0 ] ; then 
 
 NETWORK="eth0"
 echo "my network is $NETWORK"

else 

 echo "sorry, cant find network"

fi

first_recieved=$(cat /sys/class/net/$NETWORK/statistics/rx_bytes)
sleep 3 
second_recieved=$(cat /sys/class/net/$NETWORK/statistics/rx_bytes)

f=$(( ($second_recieved - $first_recieved) / 3 ))

d=$(( $f / 1000 ))

echo "$d kB/s"