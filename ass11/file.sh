if [ $# -eq 0 ]
then
	echo "No argument"
	exit
fi
for i in $*
do
	if [ -f $i ]
	then
		echo "$i is a file"
		set `cat $i | wc`
		echo "Lines : $1"
		echo "Words : $2"
		echo "Chars : $3"
	fi
done
# bash <shell file> <input file>