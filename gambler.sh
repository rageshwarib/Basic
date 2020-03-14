#!/bin/bash -x 

echo "<<< Gambler game >>>"
stake=100
goal=200
win=0
loss=0
bets=0
while((1))
do
	random=$(( $RANDOM % 2 ))
	if (($random==1))
	then 
		if (($stake==$goal))
		then
			echo "You won the Game..."
		break
		else
			((stake++))
			((win++))
		fi
	else
		if(($stake==0))
		then
			echo "OOPS...You Lost "
			break
		else
			((stake--))
			((loss++))
		fi
	fi
	((bets++))
done
