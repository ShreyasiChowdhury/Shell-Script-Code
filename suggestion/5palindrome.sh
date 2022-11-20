palindrome()
{
	num=$1
	temp=$num
	sum=0
	while [ $num -gt 0 ]
	do
		r=$(($num % 10))
		sum=`expr $((sum * 10)) + $r`
		num=$((num / 10))
	done
	if [ $temp -eq $sum ]
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
	x=`palindrome ${arr[i]}`
	if [ $x -eq 1 ]
	then
		flag=1
		echo "${arr[i]} is palindrome number"
	fi
done
if [ $flag -eq 0 ]
then
	echo "No palindrome number"
fi