#!/bin/bash  -x

for ((counter=0;counter<=9;counter++))
do
	randomArray[counter]=$(( $RANDOM % 900 + 100 ))
done
echo "Random Array :: ${randomArray[@]}"

for ((counter=0;counter<=9;counter++))
do
	for ((iter=counter+1;iter<=9;iter++))
	do
		if (( ${randomArray[counter]}>${randomArray[iter]} ))
		then
			array=${randomArray[counter]}
			randomArray[counter]=${randomArray[iter]}
			randomArray[iter]=$array
		fi
	done
done

echo "Sorted Array :: ${randomArray[@]}"
echo "Second Largest Element::  ${randomArray[8]}"
echo "Second Smallest Element::  ${randomArray[1]}"
