#!/bin/bash -x

echo "Enter three numbers:: "
read number1
read number2
read number3

result1=$(( $number1 + $number2 * $number3 ))
result2=$(( $number1 % $number2 + $number3 )) 
result3=$(( $number3 + $number1 / $number2 ))
result4=$(( $number1 * $number2 + $number3 ))
echo "$result1 $result2 $result3 $result4"

if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ] 
then
	echo "Maximum number is ::$result1"

elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ] 
then
	echo "Maximum number is::$result2"

elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] && [ $result3 -gt $result4 ] 
then
	echo "Maximum number is ::$result3"

else
	echo "Maximum number is::$result4"	
fi

if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ] 
then
	echo "Minimum number is:: $result1"
	
elif [ $result2 -lt $result1 ] && [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ] 
then
	echo "Minimum number is:: $result2"

elif [ $result3 -lt $result1 ] && [ $result3 -lt $result2 ] && [ $result3 -lt $result4 ] 
then
	echo "Minimum number is:: $result3"

else
	echo "Minimum number is:: $result4"      
fi
