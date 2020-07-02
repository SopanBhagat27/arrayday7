#!/bin/bash
read -p "enter number: " n
echo "prime factor of" $n
i=0;
for (( count=1; count<=n; count++ ))
do
	if [ $(( $n % $count )) -eq 0 ]
	then
		flag=0;
		for (( cnt=2; cnt<=count/2; cnt++ ))
		do
			if [ $(( $count % $cnt )) -eq 0 ]
			then
				flag=1;
			fi
		done
		if [ $flag -eq 0 ]
		then
			echo "entering prime number" $count "into an array"
			array[$i]=$count;
			((i++))
		fi
	fi
done
echo "array element are : "
for (( j=0; j<i; j++ ))
do
	echo ${array[j]}
done
