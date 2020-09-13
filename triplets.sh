#!/bin/bash 
read -p "Enter the size of array " n
echo  "Enter elements in array "
for (( i=1 ; i<=n ; i++ ))
do
	read  a
	arr[i]=$a
done
echo "Array : ${arr[@]}"

br=0

for (( i=1 ; i <=n-2 ; i++ ))
do
	for (( j=2 ; j <= n-1 ; j++ ))
	do

		for (( k=3 ; k<=n ; k++ ))
		do
			sum=$(( arr[i] + arr[j] + arr[k] ))
			if [ $sum -eq 0 ] 
			then
			br=1
			break
			fi
		done

	if [ $br -eq 1 ] 
	then 
	break 
	fi
	done
if [ $br -eq 1 ] 
then
break
fi
done

if [ $br -eq 1 ]
then echo "Integers are ${arr[i]}, ${arr[j]}, ${arr[k]} have sum = 0 "
else echo "Do not have integers whose sum = 0"
fi

