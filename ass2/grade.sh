echo "Enter your total number: "
read a
if [ $a -le 100 -a $a -gt 90 ]
	then
		echo "Grade : 'O'"
elif [ $a -le 90 -a $a -gt 80 ]
	then
		echo "Grade : 'E'"
elif [ $a -le 80 -a $a -gt 60 ]
	then
		echo "Grade : 'A'"
elif [ $a -le 60 -a $a -gt 40 ]
	then
		echo "Grade : 'B'"
elif [ $a -le 40 -a $a -gt 30 ]
	then
		echo "Grade : 'C'"
elif [ $a -le 30 -a $a -ge 0 ]
	then
		echo "Grade : 'F'"
else
	echo "Wrong Input"
fi