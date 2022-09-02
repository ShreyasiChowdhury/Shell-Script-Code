echo "Enter size of the array:"
read n
echo "Enter array elements:"
for((i=0;i<n;i++))
do
	read arr[$i]
done
flag=0
echo "Enter element to be searched:"
read item
for((i=0;i<n;i++))
do
	if [ ${arr[$i]} -eq $item ]
	then
		flag=1
		pos=`expr $i + 1`
		break
	fi
done
if [ $flag -eq 1 ]
then
	echo "Element found at location $pos"
else
	echo "Element is not found"
fi