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
update()
{
	read -p "Enter the roll number : " roll
	read -p "Enter the new marks : " nmarks
	x1=`wc -l < student.txt`
	for((i=2;i<=x;i++))
	do
		y=`head -n $i student.txt | tail -n 1 | cut -d "|" -f 1`
		if [ $y == $roll ]
		then
			val=`head -n $i student.txt | tail -n 1 | cut -d "|" -f 1-2`
		echo $val
		break
	fi
	done
	head -n $((i-1)) student.txt >> temp.txt
	echo "$val | $nmarks" >> temp.txt
	tail -n $((x-i)) student.txt >> temp.txt
	cat temp.txt > student.txt
	rm temp.txt
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
echo -e "1.Insert\n2.Delete\n3.Update\n4.Display\n5.Exit"
echo "Enter your choice:"
read ch
	case $ch in
		1) insert;;
		2) delete;;
		3) update;;
		4) display;;
		5) echo "Program ends"
			exit 0;;
		*) echo "Invalid choice"
			exit 1;;
	esac
done