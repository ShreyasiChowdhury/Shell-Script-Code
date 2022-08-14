echo "Input first number: "
read a
echo "Input second number: "
read b
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo "Numbers after swapping are: $a $b"