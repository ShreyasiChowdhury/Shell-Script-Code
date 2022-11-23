read -p "Enter 2 Directories : " dir1 dir2
l1=`ls $dir1 | wc -l`
l2=`ls $dir2 | wc -l`
if [ $l1 -gt $l2 ]
then
    echo "$dir1 has more files"
else
    echo "$dir2 has more files"
fi