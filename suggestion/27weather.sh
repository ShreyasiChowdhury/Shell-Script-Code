file=$1
if [ -f $file ]
then
	echo "Day\tTemperature\tWeather" > res.txt
	exec < $file
	while read line
	do
		set -e `echo $line`
		temp=$2
		if [ $temp -lt 15 ]
		then
			echo "$1\t$2\tVery Cold" >> res.txt
		elif [ $temp -lt 25 ]
		then
			echo "$1\t$2\tCold" >> res.txt
		elif [ $temp -lt 35 ]
		then
			echo "$1\t$2\tHot" >> res.txt
		else
			echo "$1\t$2\tVery Hot" >> res.txt
		fi
	done
fi
cat res.txt
# sh <shell file> <input file>
