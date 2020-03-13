#!/bin/bash -x

echo "Enter a Number::"
read number

case $number in
	1)
		echo "One" ;;
	100)
		echo "Hundread" ;;
	1000)
		echo "Thousand" ;;
	10000)
      echo "Ten Thousand" ;;
   100000)
      echo "One Lakh" ;;
	1000000)
      echo "Ten Lakh" ;;
	10000000)
      echo "One Crore" ;;
	*)
		echo "Invalid" ;;
esac
