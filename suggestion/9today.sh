dd=`date +%d`
mm=`date +%m`
yy=`date +%Y`
bb=`date +%b`
echo "Today's date is:"
echo "Format 1: $dd-$bb $yy"
echo "Format 2: $dd/$mm/$yy"
echo "Format 3: $dd-$mm-$yy"

ff=`date +%T`
hf=`date +%r`
echo -e "\nNow time in 24 hours format is: $ff"
echo "Now time in 12 hours format is: $hf"