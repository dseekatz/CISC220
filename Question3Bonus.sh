#!/bin/bash
echo "Welcome to CISC220 Racing Arena"
echo "How many players?"

read users
for i in $(seq $users)
do
	echo "User $i press $i to move forward"
done

for i in $(seq $users)
do

	car$i="|->"
	space$i=40


while (( ${#car?} < 43 )) ; do
	read num
	clear
	echo "Welcome to CISC220 Racing Arena"
	echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

	for i in $(seq $users)
	do
        	echo "User $i press $i to move forward"
		car$i="~$car$1"
		space$i=$((space$i-1))
		line$i=$(printf "%-${space$i}s" " ")
	echo $car$1 "$line$1# Lane 1 #"
done
done
for i in $(seq $users) do

	if [ ${#car$i} == 43 ] ; then
		echo "Player $i Wins!"
	fi
done
