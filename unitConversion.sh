#!/bin/bash -x   
ft1=1
inch1=12
inch2=42
meter=0.3848

ft2=`echo "scale=2; ($inch2 * $ft1 / $inch1 )" | bc` 
echo "42 Inch = $ft2 ft"

area1=`echo "scale=5; (60 * $meter ) " | bc`
area2=`echo "scale=5; (40 * $meter ) " | bc`
echo "Area of rectangle is $area1 * $area2 in sq.meters "

areacers=`echo "scale=6; $area1 * $area2 * 25 * 0.000247" | bc`
echo "25 Plots in acres :: $areacers acres" 
