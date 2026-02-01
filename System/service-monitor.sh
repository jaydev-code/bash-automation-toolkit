#!/bin/bash

services="mysql apache2 docker"
log="service_monitor_log.txt"

for serv in $services;
do
   sudo systemctl is-active --quiet $serv 

   if sudo systemctl is-active $serv --quiet; then
    echo "$serv is running.."  
    echo "$(date '+%Y-%m-%D %H:%M:%S') - $serv - status = ok" >> $log
   else 
    echo "$serv is not running..." 
    echo "$(date '+%Y-%m-%D %H:%M:%S') - $serv - status = Failed" >> $log
    echo "$serv re-trying to run.."
    sudo systemctl start $serv 
    if sudo systemctl is-active $serv --quiet; then
      echo "$serv is succesfully running.." 
      echo "$(date '+%Y-%m-%D %H:%M:%S') - $serv - status = Restarted" >> $log
    else
      echo "$serv is not running..." 
      echo "$serv re-trying to run.."  
      echo "$(date '+%Y-%m-%D %H:%M:%S') - $serv - status = ok" >> $log
    fi

  fi