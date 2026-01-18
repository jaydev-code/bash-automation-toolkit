#!/bin/bash
total=0
echo "|files    |  word counts   |"
for file in *.sh;
do
	[[ -e $file ]] || continue 
	wordCounts="$( wc -w < $file)"
	echo "$file : $wordCounts"
	total=$(( $total + $wordCounts ))

done
echo "total wordcounts : $total"

