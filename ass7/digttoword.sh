reverse()
{
	num=$1
	sum=0
	while [ $num -gt 0 ]
	do
		rem=`expr $num % 10`
		sum=`echo "($sum * 10) + $rem"|bc`
		num=`expr $num / 10`
	done
	echo $sum
}

counter()
{
	num=$1
	count=0
	while [ $num -gt 0 ]
	do
		rem=`expr $num % 10`
		count=`expr $count + 1`
		num=`expr $num / 10`
	done
	echo $count
}

echo "Enter a number:"
read num

size1=`counter $num`
rev=`reverse $num`
size2=`counter $rev`
temp=0

echo "Number in Word is :"

if [ $num -eq 0 ]
then
	echo -n -e "Zero\t"
fi

while [ $rev -gt 0 ]
do
	temp=`expr $rev % 10`
	case $temp in
		0 )	echo -n -e "Zero\t";;
		1 )	echo -n -e "One\t";;
		2 )	echo -n -e "Two\t";;
		3 )	echo -n -e "Three\t";;
		4 )	echo -n -e "Four\t";;
		5 )	echo -n -e "Five\t";;
		6 )	echo -n -e "Six\t";;
		7 )	echo -n -e "Seven\t";;
		8 )	echo -n -e "Eight\t";;
		9 )	echo -n -e "Nine\t";;
	esac
	rev=`expr $rev / 10`
done

if [ $size1 -ne $size2 ]
then
	diff=`expr $size1 - $size2`
	for((i=1;i<=diff;i++))
	do
		echo -n -e "Zero\t"
	done
fi

echo