echo "Enter a number:"
read num
temp=$num
sum=0
while [ $num -gt 0 ]
do
	rem=`expr $num % 10`
	r3=`echo "$rem ^ 3"|bc`
	sum=`expr $sum + $r3`
	num=`expr $num / 10`
done
if [ $sum -eq $temp ]
then
	echo "$temp is an Armstrong Number"
else
	echo "$temp is not an Armstrong Number"
fi