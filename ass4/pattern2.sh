echo "Enter line number:"
read n
echo "Pattern is:"
for((i=1;i<=n;i++))
do
	k=1
	for((j=1;j<=2\*n-1;j++))
	do
		if [ $k -eq 1 -a $j -ge `expr $n - $i + 1` -a $j -le `expr $n + $i - 1` ]
		then
			k=0
			echo -n -e "*\t"
		else
			k=1
			echo -n -e "\t"
		fi
	done
	echo
done
