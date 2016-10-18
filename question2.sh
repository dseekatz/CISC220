#!/bin/bash
#David Seekatz    16das4 20037710
#Sean Eylott      13se18 10141657
#Sujay Nagaraj    13sn49 10133356
#Simon Ungar      14seau 10149546
#Brooke Resendes  13brr2 10141112

#This program for question 2 will print out and identify the current IP address of the system.
#Completed by Simon Ungar, Wednesday Oct 12th
#v1.1

#This first line gets the IP addresses by piping ifconfig into grep, searching for the characters that come before the IP address, and then using awk to isolate just the IPs.
ips=$(ifconfig | grep 'addr:1' | awk -F'[: ]+' '{ print $4}')


#The IP's are put into an array, so that they can be iterated through
separateIPs=$(echo $ips | tr " " "\n")

#for loop runs through each IP address, and then identifies whether or not it is Private, Local or public. 
for addr in $separateIPs
	do
		if [[ $addr == 10* ]]; then
			echo $addr Private IP;
		elif [[ $addr == 19* ]]; then
			echo $addr Private IP;
		elif [[ $addr == 127* ]]; then
			echo $addr Local IP;
		else
			echo $addr Public IP

		fi
	done

