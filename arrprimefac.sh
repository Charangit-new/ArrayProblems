#!/bin/bash
read -p "Enter number " n
j=0
for (( i=2;i<=n; ))
do
	if [ $(($n%$i )) -eq 0 ]
	then
		n=$(($n/$i ))
		arr[j++]=$i
		continue
	fi
	i=$(($i+1))
done
echo "Prime Factors in array : ${arr[@]}"

