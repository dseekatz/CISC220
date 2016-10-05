#!/bin/bash

ips=$(ifconfig | grep 'addr:1' | awk -F'[: ]+' '{ print $4}')

separateIPs=$(echo $ips | tr " " "\n")

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

