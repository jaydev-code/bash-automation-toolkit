#!/bin/bash

echo "files   |  lines of codes |"
total=0
for file in *.sh;
do
	[[ -e $file ]] || continue
	lines="$( wc -l < $file )"
	echo "$file : $lines"
	total=$(( $total + $lines ))
done
echo "total lines : $total"
