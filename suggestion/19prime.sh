echo "Enter lower limit:"
read a
echo "Enter upper limit:"
read b
count=0
echo "Prime numbres between $a and $b are:"
for((i=a;i<b;i++))
do
	if [ $i -eq 1 -o $i -eq 0 ]
	then
		continue
	fi
	flag=1
	for((j=2;j<=i/2;j++))
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$i"
	fi
done