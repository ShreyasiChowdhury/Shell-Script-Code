echo "Enter year: "
read a
if [ `expr $a % 400` -eq 0 ]
	then
		echo "$a is Leap Year"
elif [ `expr $a % 100` -eq 0 ]
	then
		echo "$a is Common Year"
elif [ `expr $a % 4` -eq 0 ]
	then
		echo "$a is Leap Year"
else
	echo "$a is Common Year"
fi