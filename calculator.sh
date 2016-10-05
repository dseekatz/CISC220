#!/bin/bash

read -p "Please enter a number: " num1

# The user can type :q at any time and the program will terminate at the end of the loop
while ! [[ $oper == ":q" || $num2 == ":q" ]] ; do
	while ! [[ $num1 =~ ^-?[0-9]+$ ]] ; do		# Check if the input is an integer
		echo "$num1 is not a number"
		read -p "Please enter a number: " num1
	done
	read -p "Please enter an operator: " oper
	while ! [[ $oper == [*,/,+,-] || $oper == ':q' ]] ; do		# Check if the input is a valid operator
		echo "$oper is not a valid operator"
		read -p "Please enter an operator: " oper
	done
	read -p "Please enter a number: " num2
	while ! [[ $num2 =~ ^-?[0-9]+$ || $oper == ':q' ]] ; do
		echo "$num2 is not a number"
		read -p "Please enter a number: " num2
	done
	case $oper in
		[*]) (( num1=$num1*$num2 )) ;;  # Right now we can only do multiplication :(
	esac
	echo "The total so far is $num1"
done
