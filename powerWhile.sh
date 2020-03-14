#!/bin/bash -x 

number=$1
power=1
counter=1

while (( $power < 256 && $counter <= $number ))
do
	power=$((2*$power))
	echo "$power"
	((counter++))
done

