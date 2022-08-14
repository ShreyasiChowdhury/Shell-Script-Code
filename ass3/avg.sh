sum=0
echo ":Average of 5 Numbers:"
for((i=1;i<=5;i++))
do
	echo "Enter $i th number:"
	read n
	sum=`expr $sum + $n`
done
avg=`echo "scale=3; $sum / 5"|bc`
echo "Average is : $avg"