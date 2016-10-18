#!/bin/bash
#David Seekatz    16das4 20037710
#Sean Eylott      13se18 10141657
#Sujay Nagaraj    13sn49 10133356
#Simon Ungar      14seau 10149546
#Brooke Resendes  13brr2 10141112

#clearing screen and requesting user for input
#will work with any number of users but is really only fun when there is one digit as an input. Recommend only 2-9 players.
clear
echo "Welcome to CISC220 Racing Arena"
echo "How many players?"

read input


users=()
spaces=()

#setting arrays with information about each user
# each indice represents each user
for i in $(seq $input); 
do
        echo "User $i press $i to move forward"
        users[$i]="|->"
        spaces[$i]=40
done

continue=0

#condition for while loop is checked after each iteration
while (( ${continue} == 0 )) ; do
	clear
        echo "Welcome to CISC220 Racing Arena"

        for i in $(seq $input);
        do
        	echo "User $i press $i to move forward"
	done
	
	#prints the "race lanes"
	for i in $(seq $input);
	do
		line=$(printf "%-${spaces[$i]}s" " ")
       		echo "${users[$i]}" "$line# Lane $i"
	done
	
	read num
	
	#modified the arrays based on user input. ie: pushes a car forward
	users[$num]="~${users[$num]}"
	spaces[$num]=$((spaces[$num]-1))
	
	for i in $(seq $input); do
		if (( ${#users[$i]} == 43 )); then
                        continue=1
                fi
        done
done
#checking for winner
for i in $(seq $input); do
	var=${users[$i]}
	if (( ${#var} == 43 )); then
		echo "Player $i Wins!"
		break
	fi
done
