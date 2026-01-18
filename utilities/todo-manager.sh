#!/bin/bash


file=TodoList.txt
while true;
do
echo "--default file is abcd.txt--"
echo "1) View all task   : "
echo "2) Add task        : "
echo "3) Remove task     : "
echo "4) change file     : "
echo "5) exit            : "
read -p "enter choices : " cho 

case $cho in
	1)
		nl $file
		;;
	2)
		read -p "enter new task :" newTask; 
		read -p "enter which line you want to add (press q to add to lastline ): " numLine;
		
		if [[ $numLine == "q" ]] ; then
			echo "$newTask" >> $file
		else
			sed -i "${numLine}i $newTask" $file
		fi	
		;;
	3)
		read -p "enter number line to remove " numLine ; sed -i ${numLine}d $file
		;;
	4)
		read -p "enter new file " newFile; file="${newFile}"
		
		;;
	5)
		echo "program exiting.."
		break
		;;
	*)
		echo "invalid input"
		;;

esac

done
