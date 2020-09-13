#!/bin/bash
read -p "Enter no of inputs " n

for (( i=1 ; i<=n ; i++))
do
	random=$(($RANDOM%900+100))
	arr[i]=$random
done
echo "The array of $n elements : "
echo "${arr[@]} "

max1=${arr[1]}
#max2=${arr[1]}

for (( i=1;i<=n;i++))
do
	if [ ${arr[i]} -gt $max1 ]
	then
	max2=$max1
	max1=${arr[i]}
	elif [[ ${arr[i]} -gt $max2 ]] && [[ ! ${arr[i]} -eq $max1 ]]
	then
	max2=${arr[i]}
	fi

done

echo "2nd Largest number=$max2"


min1=${arr[1]}
for ((i=1;i<=n;i++))
do
		if [ ${arr[i]} -lt $min1 ]
		then
		min2=$min1
		min1=${arr[i]}
		elif [[ ${arr[i]} -lt $min2 ]] && [[ ! ${arr[i]} -eq $min1 ]]
		then
		min2=${arr[i]}
		fi
done
echo "2nd smallest=$min2"






