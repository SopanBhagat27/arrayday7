#!/bin/bash
for (( i=1; i<=10; i++ ))
do
	arr[i]=$(( RANDOM%999 ))
done
echo "Original Array: "${arr[@]}

for (( i=1; i<=10 i++ ))
do
	for (( j=0; j<=((10-i)); j++ ))
	do
		if [[ ${arr[j]} -gt ${arr[$arr[$((j+1))]} ]]
		then 
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo "sorted array : " ${arr[@]}
echo "second largest : " ${arr[9]}
echo "second smallest : "${arr[2]}
