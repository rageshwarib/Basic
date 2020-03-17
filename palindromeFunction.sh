#!/bin/bash -x	


function isPalindrome()	
{	
	firstNumber=$1	
	secondNumber=$2	
	Number=$firstNumber	
	while (($Number!=0))	
	do	
		remainder=$((Number % 10))	
		sum=$((sum*10+remainder))	
		Number=$((Number/10))	
	done	
	if (( $secondNumber == $sum ))	
	then 	
		echo "Given numbers are Palindromes"	
	else	
		echo "Given numbers are not Palindromes"	
	fi	
}	

read -p "Enter first Number:: " firstNumber	
read -p "Enter second Number:: " secondNumber	
result="$( isPalindrome $firstNumber $secondNumber )"	
echo $result
