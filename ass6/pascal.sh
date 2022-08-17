factorial()
{
	num=$1	
	fact=1
	for((i=1;i<=num;i++))
	do
		fact=`expr $fact \* $i`
	done
	echo $fact
}
ncr()
{
	n=$1
	r=$2
	temp1=`factorial $n`
	x=`expr $n - $r`
	temp2=`factorial $x`
	temp3=`factorial $r`
	temp4=`expr $temp2 \* $temp3`
	temp=`expr $temp1 / $temp4`
	echo $temp
}
echo "Enter line number:"
read n
echo "Pascal Triangle is:"
for((i=1;i<=n;i++))
do
	k=1
	r=0
	for((j=1;j<=2\*n-1;j++))
	do
		if [ $k -eq 1 -a $j -ge `expr $n - $i + 1` -a $j -le `expr $n + $i - 1` ]
		then
			newn=`expr $i - 1`
			val=`ncr $newn $r`
			echo -n -e "$val\t"
			k=0
			r=`expr $r + 1`
		else
			echo -n -e "\t"
			k=1
		fi
	done
	echo
done