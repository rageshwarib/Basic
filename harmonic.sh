#!/bin/bash -x

number=$1
harmonic=0
for ((counter=1;counter<=number;counter++))
do
   num=`echo "scale=4; (1 / $counter)" | bc`
   harmonic=`echo "scale=2; ($harmonic + $num)" | bc`
done
echo "Harmonic Number:: $harmonic"
