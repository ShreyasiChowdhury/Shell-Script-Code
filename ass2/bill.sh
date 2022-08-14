echo "Enter consumption unit: "
read a
if [ $a -le 200 -a $a -ge 0 ]
	then
		sum=`echo "scale=3; $a * 0.5"|bc`
elif [ $a -le 400 -a $a -ge 201 ]
	then
		sum=`echo "scale=3; $a * 0.65 + 100"|bc`
elif [ $a -le 600 -a $a -ge 401 ]
	then
		sum=`echo "scale=3; $a * 0.8 + 250"|bc`
else
	sum=`echo "scale=3; $a * 1.25 + 425"|bc`
fi
echo "Total electricity bill is: $sum"