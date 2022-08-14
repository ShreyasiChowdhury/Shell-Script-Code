echo "Enter a number:"
read num
for((i=1;i<num;i++))
do
	rem=`expr $num % $i`
	if [ $rem -eq 0 ]
	then
		sum=`expr $sum + $i`
	fi
done
if [ $sum -eq $num ]
then
	echo "$num is a Perfect Number"
else
	echo "$num is not a Perfect Number"
fi