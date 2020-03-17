#!/bin/bash -x	

minCelciusTemp=0	
maxCelciusTemp=100	
minFahrenheitTemp=32	
maxFahrenheitTemp=212	

function celciusToFahrenheit()	
{	
	read -p ">>>Enter a temperature in Celcius::" celciusTemp	
	if (( $celciusTemp >= $minCelciusTemp && $celciusTemp <= $maxCelciusTemp ))	
	then	
		fahrenheitTemp=`echo "scale=3; (($celciusTemp*9/5))+$minFahrenheitTemp" | bc`	
		echo ">>>Temperature in Fahrenheit ::" `echo "scale=3; $fahrenheitTemp" | bc`	
	else	
		echo "Invalid Input..."	
	fi	
}	

function fahrenheitToCelcius()	
{	
	read -p ">>>Enter a temperature in Fahrenheit::" fahrenheitTemp	
	if (( $fahrenheitTemp >= $minFahrenheitTemp && $fahrenheitTemp <= $maxFahrenheitTemp ))	
	then	
		celciusTemp=`echo "scale=3; (($fahrenheitTemp-$minFahrenheitTemp))*5/9" | bc`	
		echo ">>>Temperature in Celcius ::" `echo "scale=3; $celciusTemp" | bc`	
	else	
		echo "Invalid Input..."	
	fi	
}	

echo "1.Celcius to Fahrenheit"	
echo "2.Faehrenheit to Celcius"	
read -p "Enter your choice:" choice	
case $choice in 	
	1)	
		celciusToFahrenheit ;;	
	2)	
		fahrenheitToCelcius ;;	
	*)	
		echo "Invalid choice" ;;	
esac
