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
		if (( $number == 1 ))
		then
			echo "Your thinking number is $magic"
		fi 
		break ;;
	2)
      if (( $number == 2 ))
      then
         endNumber=$magic
      fi ;;
	3)
		if (( $number == 3 ))
		then
			startNumber=$magic
		fi ;;
	*)
		echo "Please enter valid number" ;;
	esac
done
		
