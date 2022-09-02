echo "Enter size of the array:"
read n
echo "Enter array elements:"
for((i=0;i<n;i++))
do
	read arr[$i]
done
max1=${arr[0]}
max2=${arr[0]}
for((i=1;i<n;i++))
do
	if [ ${arr[i]} -gt $max1 ]
	then
		max2=$max1
		max1=${arr[i]}
	elif [ ${arr[i]} -gt $max2 -a ${arr[i]} -lt $max1 ]
	then
		max2=${arr[i]}
	fi
done
echo "Highest Element : $max1"
echo "Second Highest Element : $max2"