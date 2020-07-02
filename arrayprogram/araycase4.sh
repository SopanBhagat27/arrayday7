#!/bin/bash
read -p "Enter the nubers :" n
echo "enter numbers :"
i=o
while [ $i -lt $n ]
do
	read a[$i]
	i=`expr $i + 1`
done
echo "array element"

for i in "${a[@]}"
do
	echo $i
done

count=0;
	for (( i=0; i<=n-2; i++ ))
	do
		for (( j=i+1; j<n-1; j++ ))
		do
			for (( k=j+1; k<n; k++ ))
			do
				sum=$(( ${a[i]} + ${a[j]} + ${a[k]} ))
				if [ $sum -eq 0 ]
				then
					echo ${a[i]} ${a[j]} ${a[k]}
					count=1;
				fi
			done
		done
	done
if [ $count -eq 0 ]
then
	echo "not exist"
fi
