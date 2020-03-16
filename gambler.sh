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
			echo "Congratulations...You won the Game..."	
		break	
		else	
			((stake++))	
			((win++))	
		fi	
	else	
		if(($stake==0))	
		then	
			echo "OOPS...You Lost the game"	
		break	
		else	
			((stake--))	
			((loss++))	
		fi	
	fi	
	((bets++))	
done

echo "You won $win times"
echo "You lost $loss times"
echo "Number of bets :: $bets"
