#!/bin/bash -x

count=0

for (( counter=0;counter<=100;counter++))
do
	if((counter%11 == 0 && counter != 0 ))
	then
		repeatedDigitArray[count++]=$counter
	fi
done

echo "Array of repeated digits:: ${repeatedDigitArray[@]}"
