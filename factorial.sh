#!/bin/bash -x

echo "Enter a Number::"
read factorial
fact=1
for ((counter=factorial;counter>=1;counter--))
do
	fact=$(( $fact * $counter ))
	echo $fact
done	
echo $fact
