#!/bin/bash
clear
echo "Welcome to CISC220 Racing Arena"
echo "How many players?"

read input

users=()
spaces=()

for i in $(seq $input); 
do
        echo "User $i press $i to move forward"
        users[$i]="|->"
        spaces[$i]=40
done

continue=0

while (( ${continue} == 0 )) ; do
	clear
        echo "Welcome to CISC220 Racing Arena"

        for i in $(seq $input);
        do
        	echo "User $i press $i to move forward"
                #if (( ${num} == $i )); then
                        #users[$i]="~${users[$i]}"
                       	#spaces[$i]=$((spaces[$i]-1))
                #fi
	done
	
	for i in $seq $input);
	do
		line=$(printf "%-${spaces[$i]}s" " ")
       		echo "users[$i]" "$line# Lane $i"
	done
	
	read num
	
	users[$num]="~${users[$num]}"
	spaces[$num]=$((spaces[$num]-1))
	
	for i in $(seq $input); do
		if (( ${#users[$i]} == 43 )); then
                        continue=1
                fi
        done
done
for i in $(seq $users) do

        if (( ${#users[$i]} == 43 )); then
                echo "Player $i Wins!"
        fi
done
