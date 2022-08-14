echo "Enter first number: "
read a
echo "Enter second number: "
read b
add=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`
mod=`expr $a % $b`
echo "Addition = $add"
echo "Subtraction = $sub"
echo "Multiplication = $mul"
echo "Division = $div"
echo "Modulus = $mod"