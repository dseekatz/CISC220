#!/bin/bash

if [ "$1" = '-s' ]; then
echo "OLD" "CURRENT" "FILE"
	for line in [[ $(diff <($2) <(ls -l | awk NR> 1 {print $1 "\t" $9) ]] ; do	 
		if [[ grep <* ]]; then #need to extract just the permissions
			oldpermissions =  ${$line:0:10}
		else [[ grep >* ]]
			newpermissions = ${$line:0:10}
			filenames = ${$line:11}
		fi
	done
fi

for i in ` seq 0  ${#filenames[i]} `; do
	if [ "${newpermissions[$i]}" -ne "${oldpermissions[$i]}" ]; then  #to get columns
	echo filenames[i] | column | newpermissions | column | oldpermissions | column
	echo  "\n"
fi
done 
	
if [ "$1" == 'r ' ]; then
	for i in `seq ${#filenames[i]} `; do
	chmod oldpermissions[$i] filenames[$i] 
done   
fi 







