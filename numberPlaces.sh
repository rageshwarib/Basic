#!/bin/bash -x

echo "Enter a Number::"
read number

if [[ $number -eq 1 || $number -eq 10 || $number -eq 100 || $number -eq 1000 || $number -eq 10000 ]]
then
	if [ $number -eq 1 ]
	then
	echo "Unit"

	elif [ $number -eq 10 ]
	then 
	echo "Ten"

	elif [ $number -eq 100 ]
   then 
   echo "Hundread"

	elif [ $number -eq 1000 ]
   then 
   echo "Thousand"

	elif [ $number -eq 10000 ]
   then 
   echo "Ten Thousand"
	fi
else
echo "Please enter Valid Number"
fi
