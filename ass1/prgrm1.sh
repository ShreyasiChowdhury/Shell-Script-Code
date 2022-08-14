a=hello
b=`expr length $a`
c=`expr index $a e`
d=`expr substr $a 3 5`
echo "$b $c $d"