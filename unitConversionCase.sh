#!/bin/bash -x

echo "Enter 1 for feet to inch Conversion..."
echo "Enter 2 for inch to feet Conversion..."
echo "Enter 3 for feet to meter Conversion..."
echo "Enter 4 for meter to feet Conversion..."

read number

case $number in
	1)
		echo "Enter a  number for conversion of Feet into Inch"
		read feetvalue
		inch=$(( $feetvalue * 12 ))
		echo $inch ;; 
	2)
		echo "Enter a number for conversion of Inch into Feet"
		read inchvalue
		feet=`echo "scale=5; ( $inchvalue / 12 ) " | bc`
		echo $feet ;;
	3)
		echo "Enter a number for conversion of Feet to meter"
		read feetvalue
		meter=`echo "scale=5; ( $feetvalue / 3.281 ) " | bc`
		echo $meter ;;
	4)
		echo "Enter a number for conversion of meter to feet"
		read metervalue
		feet=`echo "scale=5; ( $metervalue * 3.281 ) " | bc`
		echo $feet ;;
	*)
		echo "Invalid Number"
esac
