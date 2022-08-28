echo "Enter operand 1:"
read a
echo "Enter operand 2:"
read b
echo "Enter operator:"
read op
case $op in
	'+'	)	res=`echo "scale=3; $a + $b"|bc`;;
	'-'	)	res=`echo "scale=3; $a - $b"|bc`;;
	'*'	)	res=`echo "scale=3; $a * $b"|bc`;;
	'/'	)	res=`echo "scale=3; $a / $b"|bc`;;
esac
echo "Result: $res"