#!/bin/bash -x 

number1=$(( $RANDOM % 900 + 100 ))
number2=$(( $RANDOM % 900 + 100 ))
number3=$(( $RANDOM % 900 + 100 ))
number4=$(( $RANDOM % 900 + 100 ))
number5=$(( $RANDOM % 900 + 100 ))

echo $number1
echo $number2
echo $number3
echo $number4
echo $number5

if [ $number1 -eq $number2 ] && [ $number1 -eq $number3 ] && [ $number1 -eq $number4 ] && [ $number1 -eq $number5 ]	
then
echo "Numbers are Equal"
	elif [ $number1 -gt $number2 ] && [ $number1 -gt $number3 ] && [ $number1 -gt $number4 ] && [ $number1 -gt $number5 ]
	then
	echo "Maximum number is ::$number1"

	elif [ $number2 -gt $number1 ] && [ $number2 -gt $number3 ] && [ $number2 -gt $number4 ] && [ $number2 -gt $number5 ]
	then
	echo "Maximum number is ::$number2"

	elif [ $number3 -gt $number1 ] && [ $number3 -gt $number2 ] && [ $number3 -gt $number4 ] && [ $number3 -gt $number5 ]
	then
	echo "Maximum number is ::$number3"

	elif [ $number4 -gt $number1 ] && [ $number4 -gt $number2 ] && [ $number4 -gt $number3 ] && [ $number4 -gt $number5 ]
	then
	echo "Maximum number is ::$number4"

	else
	echo "Maximum number is ::$number5"	
fi

if [ $number1 -lt $number2 ] && [ $number1 -lt $number3 ] && [ $number1 -lt $number4 ] && [ $number1 -lt $number5 ]
then
echo "Minimum number is:: $number1"
	elif [ $number2 -lt $number1 ] && [ $number2 -lt $number3 ] && [ $number2 -lt $number4 ] && [ $number2 -lt $number5 ]
	then
	echo "Minimum number is:: $number2"

	elif [ $number3 -lt $number1 ] && [ $number3 -lt $number2 ] && [ $number3 -lt $number4 ] && [ $number3 -lt $number5 ]
	then
	echo "Minimum number is:: $number3"

	elif [ $number4 -lt $number1 ] && [ $number4 -lt $number2 ] && [ $number4 -lt $number3 ] && [ $number4 -lt $number5 ]
	then
	echo "Minimum number is:: $number4"

	else
	echo "Minimum number is:: $number5"      
fi


