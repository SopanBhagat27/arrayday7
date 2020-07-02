#! /bin/bash
arr=()
counter=0
i=1
end=100
	while [ $i -le $end ]
	 do
		if [ $(( i%11 )) -eq 0 ]
		  then
			arr[ $counter ]=$i
			counter=`expr $counter + 1`
		 fi
i=`expr $i + 1`
	done
echo ${arr[@]}
