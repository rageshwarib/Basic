#!/bin/bash 

echo "Enter a number::"
read number

for (( counter=2;counter<=$number;counter++ ))
do
	for (( num=counter;(number%num)==0;num=$counter ))
	do
		if [[ $(( $number%$num )) -eq 0 ]]
		then
			echo "$counter"
		fi
	number=$(($number/$num))
	done
done
