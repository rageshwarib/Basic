#!/bin/bash 

for ((counter=0;counter<=9;counter++))
do
	randomArray[counter]=$(( $RANDOM % 900 + 100 ))
done
echo "Random Array :: ${randomArray[@]}"

largest=${randomArray[0]}
secondLargest=${randomArray[0]}
smallest=${randomArray[0]}
secondSmallest=${randomArray[0]}

function secondLargest()
{
	for ((count=0;count<=9;count++))
	do
		if (( ${randomArray[count]} > $largest))
		then
			secondLargest=$largest
			largest=${randomArray[count]}
		elif (( ${randomArray[count]} > $secondLargest ))
		then
			secondLargest=${randomArray[count]}
		fi
	done
	echo "second Largest:: $secondLargest"
}

function secondSmallest()
{
	for ((count=0;count<=9;count++))
	do
		if (( ${randomArray[count]} < $smallest))
		then
			secondSmallest=$smallest
			smallest=${randomArray[count]}
		elif (( ${randomArray[count]} < $secondSmallest ))
		then
			secondSmallest=${randomArray[count]}
		fi
	done
	echo "Second Smallest:: $secondSmallest"
}

secondSmallest
secondLargest
