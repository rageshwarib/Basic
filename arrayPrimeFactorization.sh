#!/bin/bash -x 

read -p "Enter a number::" Number
copyNum=$Number
for (( counter=2;counter<=$Number;counter++ ))
do
	for (( num=counter;(Number%num)==0;num=$counter ))
	do
		if [[ $(( $Number%$num )) -eq 0 ]]
		then
			array[((count++))]=$counter
#			((array[count++]))
		fi
		Number=$(($Number/$num))
	done
done
echo "Factors of $copyNum are :: ${array[@]}"

