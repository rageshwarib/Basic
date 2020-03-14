 #!/bin/bash 

echo "Enter a Starting number in range"
read startNum
echo "Enter a last number in range"
read endNum
variable=0
echo "Prime Numbers between $startNum and $endNum are::"
for ((range=startNum;range<=endNum;range++))
do
	for ((counter=2;counter<=range-1;counter++))
	do
		if [ $(( $range % $counter )) -eq 0 ]
		then
			((variable++))
		fi
	done

	if [ $variable -eq 0 ]
	then
		echo "$range"
	else 
		variable=0
	fi
done
