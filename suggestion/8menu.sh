menu()
{
    echo
    echo "<1> Get random number"
    echo "<0> Exit"
    echo
}
echo "::menu driven program::"
while [ 1 ]
do
    menu
    read -p "Reply:> "
    case "$REPLY" in
        0) exit ;;
        1) echo -e "\nRandom: $RANDOM" ;;
        *) echo -e "Invalid Choice" ;;
    esac
done