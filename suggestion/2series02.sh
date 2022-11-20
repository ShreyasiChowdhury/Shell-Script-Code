# 1 + (x/2)^2 - (x/2)^3 + (x/2)^4 - (x/2)^5 + ...
echo "Enter n:"
read n
echo "Enter x:"
read x
sum=1
sign=1
val=`echo "scale=3; $x / 2"|bc`
for((i=2;i<=n;i++))
do
	temp=`echo "$val ^ $i"|bc`
	temp=`echo "scale=3; $temp * $sign"|bc`
	sum=`echo "scale=3; $sum + $temp"|bc`
	sign=`echo "0 - $sign"|bc`
done
echo "Result is $sum"