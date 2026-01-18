#!/bin/bash


read -p "enter any command : " cmd
start=$( date "+%s")
bash -c "$cmd"
end=$(date "+%s")
totaltimeused=$(( $end - $start ))

echo "total time used : $totaltimeused "

