#!/bin/bash

echo -n "enter command to run process : " 
read var

if systemctl is-active $var; then
	echo "$var is running"
else
	echo " $var is not running "
	echo " restarting the process..."
	sudo systemctl start $var

	if systemctl is-active $var; then
		echo "$var is now running "
	else
		echo "failed to run.."
	
	fi
fi

