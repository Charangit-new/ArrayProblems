#!/bin/bash 
read -p "Enter no of input " n
for(( i=1;i<=n;i++))
do
	random=$((RANDOM%900+100))
	arr[i]=$random
done
echo "Array : "
echo "${arr[@]}"

for (( i=1;i<=n;i++))
do
	for (( j=1;j<=n-i;j++ ))
	do
		if [ ${arr[$((j+1))]} -lt ${arr[j]} ]
		then
		temp=${arr[j+1]}
		arr[j+1]=${arr[j]}
		arr[j]=$temp
		fi
	done
done
echo "Sorted array (in ascending order) : "
echo "${arr[@]} "

echo "2nd largest element = ${arr[$((n-1))]}"
echo "2nd smallest element = ${arr[2]}"
