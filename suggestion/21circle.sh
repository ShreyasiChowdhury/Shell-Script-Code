echo -n "Enter radius: "
read r
for((i=0;i<=360;i+=5))
do
	th1=`echo "scale=4; 3.14/180*$i" | bc | awk '{print cos($1)}'`
	th2=`echo "scale=4; 3.14/180*$i" | bc | awk '{print sin($1)}'`
	x=`echo "scale=4; $r*$th1" | bc | awk '{print int($1)}'`
	y=`echo "scale=4; $r*$th2" | bc | awk '{print int($1)}'`
	x=`expr $x + 20`
	y=`expr $y + 20`
	tput cup $x $y
	echo "*"
done
tput cup $(tput lines) 0