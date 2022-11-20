gcd()
{
	a=$1
	b=$2
	if [ $b -eq 0 ]
	then
		echo $a
	else
		gcd $b $(($a % $b))
	fi
}
echo "Enter number of elements:"
read n
echo "Enter elements:"
for((i=0;i<n;i++))
do
	read arr[$i]
done
lcm=${arr[0]}
for((i=1;i<n;i++))
do
	p=`expr ${arr[i]} \* $lcm`
	q=`gcd ${arr[i]} $lcm`
	lcm=`expr $p / $q`
done
echo "LCM is: $lcm"