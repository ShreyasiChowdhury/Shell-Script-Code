insert()
{
	echo "Enter Roll:"
	read roll
	echo "Enter Name:"
	read name
	echo "Enter Marks:"
	read marks
	echo "$roll|$name|$marks" >> student.txt
}
delete()
{
	echo "Enter the Roll:"
	read roll
	x=`wc -l < student.txt`
	for((i=1;i<=x;i++))
	do
		y=`head -n $i student.txt | tail -n 1 | cut -d \| -f 1`
		if [ $roll == $y ]
		then
			break
		fi
	done
	head -n $((i-1)) student.txt >> temp.txt
	tail -n $((x-i)) student.txt >> temp.txt
	cat temp.txt > student.txt
	rm temp.txt
}
display()
{
	cat student.txt
}
while [ 1 ]
do
echo -e "1.Insert\n2.Delete\n3.Display\n4.Exit"
echo "Enter your choice:"
read ch
	case $ch in
		1) insert;;
		2) delete;;
		3) display;;
		4) echo "Program ends"
			exit 0;;
		*) echo "Invalid choice"
			exit 1;;
	esac
done