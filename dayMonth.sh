#!/bin/bash -x
 
read day
read month
if (( $day < 1 || $day > 31 || $month < 3 || $month > 6 ))
then
echo "Invalid Entry"
else
	if (( $month <= 6 && $month >= 3 ))
	then 
		if (( $month == 3 && $day >= 20 ))
		then
		echo "True"
		elif (( $month == 6 && $day <= 20 ))
		then
		echo "True"
		elif (( $month == 4 && $day <=30 || $month == 5 ))
		then
		echo "True"
		else
		echo "False"
		fi
	else 
	echo "False"
	fi
fi


