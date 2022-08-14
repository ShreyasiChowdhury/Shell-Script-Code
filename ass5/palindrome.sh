echo "Enter a number:"
read num
temp=$num
sum=0
while [ $num -gt 0 ]
do
	rem=`expr $num % 10`
	sum=`echo "($sum * 10) + $rem"|bc`
	num=`expr $num / 10`
done
if [ $sum -eq $temp ]
then
	echo "$temp is a Palindrome Number"
else
	echo "$temp is not a Palindrome Number"
fi