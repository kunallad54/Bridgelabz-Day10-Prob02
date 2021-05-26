#! /bin/bash -x

headCount=0
tailCount=0
while [ 1 ]
do
	coinResult=$((RANDOM%2))
	if [ $coinResult -eq 1 ]
	then
		headCount=$((headCount + 1))
		if [ $headCount -eq 21 ]
		then
			diff=$((headCount - tailCount))
			if [ $headCount -eq $tailCount ]
			then
				continue
			fi
			echo "Head Count is : $headCount"
			echo "Tail Count is : $tailCount"
			echo "Head has tossed 21 times and won by $diff"
			break
		fi
	else
		tailCount=$((tailCount + 1))
		if [ $tailCount -eq 21 ]
		then
			if [ $headCount -eq $tailCount ]
			then
				continue
			fi
			echo "Head Count is : $headCount"
			echo "Tail Count is : $tailCount"
			diff=$((tailCount - headCount))
			echo "Tail has tossed 21 times and won by $diff"
			break
		fi

	fi
done
