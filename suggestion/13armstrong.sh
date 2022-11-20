armstrong()
{
	num=$1
	temp=$num
	sum=0
	count=0
	while [ $num -ne 0 ]
	do
		num=`expr $num / 10`
		count=`expr $count + 1`
	done
	num=$temp
	while [ $num -gt 0 ]
	do
		rem=`expr $num % 10`
		x=`echo "$rem ^ $count"|bc`
		sum=`expr $sum + $x`
		num=`expr $num / 10`
	done
	if [ $sum -eq $temp ]
	then
		echo 1
	else
		echo 0
	fi
}
echo "Enter number of elements:"
read n
echo "Enter elements:"
for((i=0;i<n;i++))
do
	read arr[$i]
done
flag=0
for((i=0;i<n;i++))
do
	x=`armstrong ${arr[i]}`
	if [ $x -eq 1 ]
	then
		flag=1
		echo "${arr[i]} is armstrong number"
	fi
done
if [ $flag -eq 0 ]
then
	echo "No armstrong number"
fi