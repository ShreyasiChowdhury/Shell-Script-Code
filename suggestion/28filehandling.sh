if [ $# -eq 0 ]
then
	echo "No argument"
	exit
fi
for i in $*
do
	chmod a-w $i
	ls -l $i
	if [ -d $i ]
	then
		echo "$i is a directory"
	elif [ -f $i ]
	then
		echo "$i is a file"
		set `cat $i | wc`
		echo "Lines in this file: $1"
	else
		echo "$i does not exist"
	fi
done