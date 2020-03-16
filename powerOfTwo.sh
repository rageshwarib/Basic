#!/bin/bash -x	

number=$1	
echo "Table of powers of two are ::"	

for ((counter=0;counter<=number;counter++))	
do	
 	result=$(( 2 ** $counter ))	
	echo "$result"	
done
