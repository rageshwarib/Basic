#!/bin/bash -x

array=(-6 -5 -4 -3 -2 -1 0 1 2 3 4 5)
i=0
j=0
k=0
flag=0
echo "Triplets whose sum is zero are::"

for ((i=0;i,i<${#array[@]}-2;i++))
do
	for((j=i+1;j<${#array[@]}-1;j++))
	do
		for((k=j+1;k<${#array[@]};k++))
		do
			if (( ${array[i]}+${array[j]}+${array[k]} == 0 ))
			then
				echo "[${array[i]},${array[j]},${array[k]}]"
				flag=1
			fi
		done
	done
done

if [[ $flag = 0 ]]
then
	echo "There is no Triplets"
fi
