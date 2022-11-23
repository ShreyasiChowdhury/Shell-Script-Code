echo "Enter the array size:"
read n
echo "Enter array elements:"
for((i=0;i<n;i++))
do
    read a[i]
done
echo -e "1.Display\n2.Insert\n3.Delete\n4.Search\n5.Exit"
while [ 1 ]
do
    echo "Enter your choice:"
    read c
    case $c in
    1)  echo "The array is: "
        echo "${a[@]}";;
    2)  echo "Enter the element you want to enter:"
        read x
        a[n]=$x
        n=`expr $n + 1`;;
    3)  echo "Enter the element you want to delete:"
        read y
        for((i=0;i<n;i++))
        do
            if [ ${a[i]} -eq $y ]
            then
                j=$i
                break
            fi
        done
        for((i=j;i<n;i++))
        do
            p=`expr $i + 1`
            a[j]=${a[p]}
        done
        n=`expr $p - 1`;;
    4)  echo "Enter the element you want to search:"
        read search
        pos=-1
        for((i=0;i<n;i++))
        do
            if [ ${a[i]} == $search ]
            then
                pos=$i
            break
            fi
        done
        if [ $pos -eq -1 ]
        then
            echo "Element not found"
        else
            pos=`expr $pos + 1`
            echo "Element found; poition = $pos"
        fi;;
    5)  echo "Program ends"
            exit 0;;
    *)  echo "Invalid choice"
            exit 1;;
    esac
done