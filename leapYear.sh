#!/bin/bash -x

echo "Enter a Year::"
read year

if [[ ${#year} -ne 4 ]]
then
	echo "Invalid Entry...Please enter year having four digit "
else
	if (( $year%4 == 0  && $year % 100 != 0 || $year % 400 == 0 ))
	then
	echo "It's a Leap Year"
	else
	echo "It's not a Leap Yaer"
	fi
fi
