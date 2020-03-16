#!/bin/bash 

echo "<<< Magic Number >>>"
startNumber=1
endNumber=100
echo "Think your number between 1 to 100"
flag=0
while [ $flag = 0 ]
do
	magic=$(( (( $startNumber + $endNumber )) /2 ))
	echo "1. It's my number << $magic >>...Is equal to your number?...Enter 1"
	echo "2. Is your number is less than my number...Enter 2"
	echo "3. Is your number is greater than my number...Enter 3"
	echo "Check your number..."
	read number

	case $number in
	1)
		echo "Your thinking number is $magic"
 		break ;;
	2)
		endNumber=$magic ;;
	3)
		startNumber=$magic ;;
	*)
		echo "Please enter valid number" ;;
	esac
done
		
