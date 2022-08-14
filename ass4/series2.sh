# 1 + x/1! + x^3/3! + x^5/5! + ...
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

echo "Enter n:"
read n
echo "Enter x:"
read x
sum=1
p=1
for((j=1;j<n;j++))
do
	temp_pow=`echo "$x ^ $p"|bc`
	temp_fact=`factorial $p`
	temp=`echo "scale=3; $temp_pow / $temp_fact"|bc`
	sum=`echo "scale=3; $sum + $temp"|bc`
	p=`expr $p + 2`
done
echo "Result is $sum"