# Making an option 1,2,3,4
# found on askubuntu.com
echo "Choose your option:"
echo ""
echo "1) Option 1 "
echo "2) Option 2 "
echo "3) Option 3 "
echo "4) Quit "
echo ""

# Bash Menu Script Example
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
