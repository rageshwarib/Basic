#!/bin/bash -x  


random1=$(( $RANDOM %  90 + 10))
random2=$(( $RANDOM %  90 + 10))
random3=$(( $RANDOM %  90 + 10))
random4=$(( $RANDOM %  90 + 10))
random5=$(( $RANDOM %  90 + 10))

echo "First random number::$random1"
echo "Second random number::$random2"
echo "Third random number::$random3"
echo "Fourth random number::$random4"
echo "Fifth random number::$random5"

sum=$(( $random1 + $random2 + $random3 + $random4 + $random5  ))
echo "Addition of 5 random Numbers are:: $sum"

average=`echo "scale=2; ( $sum / 5 ) " | bc` 
echo "Average :: $average"


 


