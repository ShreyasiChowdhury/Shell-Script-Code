# 1 + x^2 + x^4 + x^6 + ...
power()
{
	a=$1
	b=$2	
	pow=1
	for((i=1;i<=b;i++))
	do
		pow=`expr $pow \* $a`
	done
	echo $pow
}

echo "Enter n:"
read n
echo "Enter x:"
read x
sum=0
p=0
for((j=0;j<n;j++))
do
	res=`power $x $p`
	sum=`expr $sum + $res`
	p=`expr $p + 2`
done
echo "Result is $sum"