#!/bin/bash -x 

headCounter=0
tailCounter=0

while (( $headCounter < 11 && $tailCounter < 11 ))
do
	random=$(( $RANDOM % 2 ))
	if (($random == 0))
	then 
		((tailCounter++))
	else
		((headCounter++))
	fi
done

if(($headCounter == 11))
then
	echo "Head wins 11 times"
else
	echo "Tail wins 11 times"
fi
