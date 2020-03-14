#!/bin/bash -x 

echo "Enter a number:: "
read number

for ((counter=2;counter<=$number;counter++))
do
	if (($number % $counter==0))
	then
		count=0
		for ((iter=2;iter<=$counter/2;iter++))
		do
			if (($counter % $iter==0)) 
			then
				((count++))
			fi
		done
		if (($count == 0))
		then
			echo "$counter"
		fi		
	fi
done
