#!/bin/bash -x

echo "Enter a Number"
read number

if (( $number >= 8 || $number <= 0 ))
then
echo "Invalid Entry"
else
	if [ $number -eq 1 ]
	then 
	echo "It's Monday"

	elif [ $number -eq 2 ]
	then
	echo "It's Tuesday"

	elif [ $number -eq 3 ]
	then
	echo "It's Wednesday"

	elif [ $number -eq 4 ]
   then
   echo "It's Thursday"

	elif [ $number -eq 5 ]
   then
   echo "It's Friday"

	elif [ $number -eq 6 ]
   then
   echo "It's Saturday"

	elif [ $number -eq 7 ]
   then
   echo "It's Sunday"
	fi
fi
