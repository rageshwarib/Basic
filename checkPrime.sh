#!/bin/bash 

echo "Enter a number::"
read number
variable=0

for ((counter=1;counter<=number;counter++))
do
	if [ $(( $number % $counter )) -eq 0 ]
	then
		((variable++))
	fi
done

if [ $variable -eq 2 ]
then 
	echo "Given number is Prime Number"
else
	echo "Given number is not a Prime number"
fi
