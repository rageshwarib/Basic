#!/bin/bash -x

number1=$(( $RANDOM % 6 + 1 ))
number2=$(( $RANDOM % 6 + 1 ))
echo $number1
echo $number2
sum=$(( $number1 + $number2 ))
echo "Addition of two Random numbers:: $sum"
