echo "Enter a number:"
read num
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
	echo "$temp is an Armstrong Number"
else
	echo "$temp is not an Armstrong Number"
fi