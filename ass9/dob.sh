month=(31 28 31 30 31 30 31 31 30 31 30 31)
echo "Enter your date of birth:"
IFS="/"
read dob
set $dob
d=$1
m=$2
y=$3
dd=`date +%d`
mm=`date +%m`
yy=`date +%Y`
if [ $d -gt $dd ]
then
	dd=`expr $dd + ${month[m-1]}`
	mm=`expr $mm - 1`
fi
if [ $m -gt $mm ]
then
	yy=`expr $yy - 1`
	mm=`expr $mm + 12`
fi
agd=`expr $dd - $d`
agm=`expr $mm - $m`
agy=`expr $yy - $y`
echo "$agy years $agm months $agd days"
