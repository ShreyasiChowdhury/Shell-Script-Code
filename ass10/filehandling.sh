file=$1
if [ -f $file ]
then
	echo "Name\tRoll\tMarks\tGrade" > xyz.txt
	exec < $file
	while read line
	do
		set -e `echo $line`
		mark=$3
		case $mark in
			9[0-9]|100 )
				echo "$1\t$2\t$3\tO" >> xyz.txt ;;
			8[0-9] )
				echo "$1\t$2\t$3\tE" >> xyz.txt ;;
			7[0-9] )
				echo "$1\t$2\t$3\tA" >> xyz.txt ;;
			6[0-9] )
				echo "$1\t$2\t$3\tB" >> xyz.txt ;;
			5[0-9] )
				echo "$1\t$2\t$3\tC" >> xyz.txt ;;
			4[0-9] )
				echo "$1\t$2\t$3\tD" >> xyz.txt ;;
			0[0-9]|1[0-9]|2[0-9]|3[0-9] )
				echo "$1\t$2\t$3\tF" >> xyz.txt ;;
		esac
	done
fi
# sh filehandling.sh abc.txt
# cat xyz.txt