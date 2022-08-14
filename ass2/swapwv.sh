echo "Input first number: "
read a
echo "Input second number: "
read b
temp=$a
a=$b
b=$temp
echo "Numbers after swapping are: $a $b"