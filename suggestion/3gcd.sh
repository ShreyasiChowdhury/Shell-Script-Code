gcd()
{
	a=$1
	b=$2
	if (($a % $b == 0))
	then
		echo $b
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
res=${arr[0]}
for((i=1;i<n;i++))
do
	res=`gcd ${arr[i]} $res`
	if [ $res -eq 1 ]
	then
		res=1
	fi
done
echo "GCD is: $res"