#!/bin/bash
echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

for (( i=1; i<=5; i++ )); do
	read num
	clear
	if [ $num -eq 1 ]
	then
		for (( j=1; j<=i; j++ ));
		do
			echo -n "~"
		done
	fi
done
