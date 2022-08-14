echo "Enter first side:"
read a
echo "Enter second side:"
read b
echo "Enter third side:"
read c
if [ `expr $a + $b` -gt $c -a `expr $b + $c` -gt $a -a `expr $c + $a` -gt $b ]
then
	echo "Triangle is valid"
	s=`echo "scale=3; ($a + $b + $c) / 2"|bc`
	temp=`echo "scale=3; $s * ($s - $a) * ($s - $b) * ($s - $c)"|bc`
	area=`echo "sqrt($temp)"|bc`
	echo "Area: $area"
else
	echo "Triangle is not valid"
fi