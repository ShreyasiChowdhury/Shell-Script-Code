# x + x^2/2! + x^4/4! + ...
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
sum=$x
p=2
for((j=2;j<=n;j++))
do
	temp_pow=`echo "$x ^ $p"|bc`
	temp_fact=`factorial $p`
	temp=`echo "scale=3; $temp_pow / $temp_fact"|bc`
	sum=`echo "scale=3; $sum + $temp"|bc`
	p=`expr $p + 2`
done
echo "Result is $sum"