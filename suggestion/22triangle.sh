echo "Enter line number:"
read n
echo "Pattern is:"
for((i=1;i<=n;i++))
do
	echo
	for((k=i;k<n;k++))
	do
		echo -n -e "\t"
	done
	for((j=1;j<=2\*n-1;j++))
	do
		if [ $i -eq $n -o $j -eq 1 -o $j -eq $((2 * i - 1)) ]
		then
			echo -n -e "*\t"
		else
			echo -n -e "\t"
		fi
	done
done
echo