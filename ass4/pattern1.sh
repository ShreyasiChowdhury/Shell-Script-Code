echo "Enter line number:"
read n
echo "Pattern is:"
for((i=1;i<=n;i++))
do
	for((j=1;j<=n;j++))
	do
		if [ $j -le $i ]
		then
			echo -n "* "
		else
			echo -n " "
		fi
	done
	echo
done