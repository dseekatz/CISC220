#!/bin/bash
echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

car1="|->"
car2="|->"
car3="|->"

while (( ${#car1} < 44 && ${#car2} < 44 && ${#car3} < 44 )) ; do
	read num
	clear
	echo "Welcome to CISC220 Racing Arena"
	echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"
	if [ $num == 1 ] ; then 
		car1="~$car1"
	fi
	if [ $num == 2 ] ; then
		car2="~$car2"
	fi
	if [ $num == 3 ] ; then
		car3="~$car3"
	fi
	echo $car1
	echo $car2
	echo $car3
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
