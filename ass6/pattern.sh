echo "Enter line number:"
read n

echo "Pattern is:"

for((i=1;i<=n;i++))
do
	echo
	for((j=1;j<=2\*n-1;j++))
	do
		if [ $j -ge `expr $n - $i + 1` -a $j -le `expr $n + $i - 1` ]
		then
			echo -n -e "*\t"
		else
			echo -n -e "\t"
		fi
	done
done

for((i=2;i<=n;i++))
do
	echo
	for((j=1;j<=2\*n-1;j++))
	do
		if [ $j -ge $i -a $j -le `expr 2 \* $n - $i` ]
		then
			echo -n -e "*\t"
		else
			echo -n -e "\t"
		fi
	done
done

echo