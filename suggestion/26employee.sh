file=$1
if [ -f $file ]
then
	echo "Name\tBasic Pay\tD.A.\tH.R.A.\tP.F.\tGross Salary" > op.txt
	exec < $file
	while read line
	do
		set -e `echo $line`
		basic=$2
		da=`echo "scale=3; $basic * 0.45"|bc`
		hra=`echo "scale=3; $basic * 0.15"|bc`
		pa=`echo "scale=3; $basic * 0.1"|bc`
		gs=`echo "scale=3; $basic + $da + $hra + $pa"|bc`
		echo "$1\t$2\t$da\t$hra\t$pa\t$gs" >> op.txt
	done
fi
cat op.txt
# sh <shell file> <input file>