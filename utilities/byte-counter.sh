#!/bin/bash
echo "Files    |  byetscounts   |"
for file in *.sh ;
do
	[[ -e $file ]] || continue 
	bytesCounts="$( wc -c < $file )"
	echo "$file : $bytesCounts "
	total=$(( $total + $bytesCounts ))


done
echo "Total bytescouts : $total"

