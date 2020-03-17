#!/bin/bash -x

read -p "Enter a Number::" Number

function isPrime()
{
	count=0
	for (( iter=1; iter<=$1;iter++ ))
	do
		if (( $1%$iter == 0 ))
		then
			((count++))
		fi
	done
	if (( $count==2 ))
	then
		echo $1 is Prime Number
	else
		echo $1 is Not Prime Number 
	fi
}

function getPalindrome()
{
	temp=$1
	while (( $temp != 0 ))
	do
		remainder=$(($temp % 10))
      reverse=$((reverse*10+$remainder))
      temp=$(($temp/10))
	done
	echo "Reverse of $1 is $reverse"
}

isPrime $Number
getPalindrome $Number
isPrime $reverse
