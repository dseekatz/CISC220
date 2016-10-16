#!/bin/bash
#This program is a car racing game
echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

car1="|->"
car2="|->"
car3="|->"
space1=40
space2=40
space3=40

while (( ${#car1} < 43 && ${#car2} < 43 && ${#car3} < 43 )) ; do
	read num
	clear
	echo "Welcome to CISC220 Racing Arena"
	echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"
	if [ $num == 1 ] ; then 
		car1="~$car1"
		space1=$((space1-1))
	fi
	if [ $num == 2 ] ; then
		car2="~$car2"
		space2=$((space2-1))
	fi
	if [ $num == 3 ] ; then
		car3="~$car3"
		space3=$((space3-1))
	fi
	line1=$(printf "%-${space1}s" " ")
	line2=$(printf "%-${space2}s" " ")
	line3=$(printf "%-${space3}s" " ")
	echo $car1 "$line1# Lane 1 #"
	echo $car2 "$line2# Lane 2 #"
	echo $car3 "$line3# Lane 3 #"
done
if [ ${#car1} == 43 ] ; then
	echo "PLAYER 1 WINS!"
fi
if [ ${#car2} == 43 ] ; then
	echo "PLAYER 2 WINS!"
fi
if [ ${#car3} == 43 ] ; then
	echo "PLAYER 3 WINS!"
fi
