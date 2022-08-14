limit()
{
	d=$1
	m=$2
	y=$3
	flag=1
	min_yr=1000
	max_yr=9999
	if [ $y -gt $max_yr -o $y -lt $min_yr -o $m -gt 12 -o $m -lt 1 -o $d -gt 31 -o $d -lt 1 ]
	then
		flag=0
	else
		flag=1
	fi
	echo $flag
}

leapyr()
{
	year=$1
	flag=0
	if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 ] || [ `expr $year % 400` -eq 0 ]
	then
		flag=1
	else
		flag=0
	fi
	echo $flag
}

echo "Enter day: "
read dd
echo "Enter month: "
read mm
echo "Enter year: "
read yy

lm=`limit $dd $mm $yy`
if [ $lm -eq 0 ]
then
	echo "$dd/$mm/$yy is not a valid date"
elif [ $mm -eq 2 ]
then
	ly=`leapyr $yy`
	echo "$ly"
	if [ $ly -eq 1 -a $dd -le 29 ]
	then
		echo "$dd/$mm/$yy is a valid date"
	elif [ $ly -eq 0 -a $dd -le 28 ]
	then
		echo "$dd/$mm/$yy is a valid date"
	else
		echo "$dd/$mm/$yy is not a valid date"
	fi
elif [ $mm -eq 1 -o $mm -eq 3 -o $mm -eq 5 -o $mm -eq 7 -o $mm -eq 8 -o $mm -eq 10 -o $mm -eq 12 ]
then
	if [ $dd -le 31 ]
	then
		echo "$dd/$mm/$yy is a valid date"
	else
		echo "$dd/$mm/$yy is not a valid date"
	fi
elif [ $mm -eq 4 -o $mm -eq 6 -o $mm -eq 9 -o $mm -eq 11 ]
then
	if [ $dd -le 30 ]
	then
		echo "$dd/$mm/$yy is a valid date"
	else
		echo "$dd/$mm/$yy is not a valid date"
	fi
fi