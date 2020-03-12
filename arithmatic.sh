#!/bin/sh -x

echo "Enter three numbers::"
read number1
read number2
read number3
result=$(( $number1 % $number2 + $number3 ))
echo "Answer :: $result"
