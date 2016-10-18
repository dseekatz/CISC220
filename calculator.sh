#!/bin/bash
#David Seekatz    16das4 20037710
#Sean Eylott      13se18 10141657
#Sujay Nagaraj    13sn49 10133356
#Simon Ungar      14seau 10149546
#Brooke Resendes  13brr2 10141112

# A simple script that functions as a running calculator. It prompts the user to input a number, an operator,
# and another number. It then performs the chosen operation and prompts the user for another operator and number, etc.

echo "This is a simple calculator tool.  You can enter \":q\" at any time to exit."
read -p "Please enter a number: " num1

# The user can type :q at any time after the first input and the program will terminate
while true ; do
	while ! [[ $num1 =~ ^-?[0-9]+$ ]] ; do		# Check if the input is an integer
		echo "$num1 is not a number"
		read -p "Please enter a number: " num1
	done
	read -p "Please enter an operator: " oper
	while ! [[ $oper == [*,/,+,-] || $oper == ':q' ]] ; do		# Check if the input is a valid operator
		echo "$oper is not a valid operator"
		read -p "Please enter an operator: " oper
	done
	if [[ $oper == ':q' ]] ; then
		break							# Terminate the program
	fi
	read -p "Please enter a number: " num2
	while ! [[ $num2 =~ ^-?[0-9]+$ || $num2 == ':q' ]] ; do		# Check if the input is an integer
		echo "$num2 is not a number"
		read -p "Please enter a number: " num2
	done
	if [[ $num2 == ':q' ]] ; then
		break							# Terminate the program
	fi
	case $oper in							# If the user supplied a valid operator,
		[*]) (( num1=$num1*$num2 )) ;;				# perform the desired operation
		[/]) (( num1=$num1/$num2 )) ;;
		[+]) (( num1=$num1+$num2 )) ;;
		[-]) (( num1=$num1-$num2 )) ;;
	esac
	echo "The total so far is $num1"				# show the user the total so far
done
