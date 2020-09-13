#!/bin/bash 
read -p "Enter lower limit and upper limit between 0 and 100 " a b
for(( j=a; j<=b; j++ ))
do
	num=$j
	if [ $(( num % 11 )) -eq 0 ]
	then
		if [ ! $num -eq 0 ]
		then
		arr[j]=$num
		fi
	fi
done
echo "${arr[@]}"
