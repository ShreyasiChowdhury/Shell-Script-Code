# echo "a : $1"
# echo "b : $2"
a=$1
b=$2
c=$3
sum=`expr $a + $b \* $c`
echo "Result is: $sum"