#!/bin/bash
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

while (({$continue}==0)) ; do

        for i in $(seq $input); do
		if [${#users[$i]} == 43]; then
                        continue=1
                fi
        done


        read num
        clear
        echo "Welcome to CISC220 Racing Arena""

        for i in $(seq $users);
        do
        	echo "User $i press $i to move forward"
                if [[${num} == $i]]; then
                        users[$i]="~${users[$i]}"
                        spaces[$i]=((spaces[$i]-1))
                        line=$(printf "%-${spaces[$i]}s" " ")
                        echo "users[$i]" "$line# Lane $i"
                fi
        done
done
for i in $(seq $users) do

        if [ ${#users[$i]} == 43 ]; then
                echo "Player $i Wins!"
        fi
done
