echo "Enter size of the array:"
read n
echo "Enter array elements:"
for((i=0;i<n;i++))
do
	read arr[$i]
done
j=0
k=0
for((i=0;i<n;i++))
do
	if [ `expr ${arr[$i]} % 2` -eq 0 ]
	then
		even[$j]=${arr[$i]}
		j=`expr $j + 1`
	else
		odd[$k]=${arr[$i]}
		k=`expr $k + 1`
	fi
done
echo "Even elements are: ${even[@]}"
echo "Odd elements are: ${odd[@]}"