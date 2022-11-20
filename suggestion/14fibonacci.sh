echo "Enter elemnt number:"
read num
a=0
b=1
echo "Fibonacci series is:"
if [ $a -le 2 ]
then
	echo "$a"
	echo "$b"
fi
for((i=2;i<num;i++))
do
	c=`expr $a + $b`
	echo "$c"
	a=$b
	b=$c
done