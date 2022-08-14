a=10
b=20
c=`expr $a = $b`
d=`expr $a \< $b`
e=`expr $a \!= $b`
echo "$c"
echo "$d"
echo "$e"