#!/bin/bash -x

read d
read m
read y


y0=$(( y - ( 14 - m ) / 12 ))
x=$(( y0 + y0 / 4 - y0 / 100 + y0 / 400 ))
m0=$(( m + 12 * (( 14 - m ) / 12 ) - 2 ))
d0=$(( ( d + x + 31 * m0 / 12 ) % 7 ))

case $d0 in
	0 )
	echo "It's Sunday" ;;
	1 )
	echo "It's Monday" ;;
	2 )
	echo "It's Tuesday" ;;
	3 )
        echo "It's Wednesday" ;;
        4 )
        echo "It's Thursday" ;;
	5 )
        echo "It's Friday" ;;
        6 )
        echo "It's Saturday" ;;
esac

