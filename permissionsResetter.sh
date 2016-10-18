#!/bin/bash
#David Seekatz    16das4 20037710
#Sean Eylott      13se18 10141657
#Sujay Nagaraj    13sn49 10133356
#Simon Ungar      14seau 10149546
#Brooke Resendes  13brr2 10141112

if [ "$1" == '-s' ]; then
echo "OLD" "CURRENT" "FILE"
	for line in [[ $(2) ]]; do
		#create a variable to check the contents of oldpermissions and newpermissions
		checking = ${$<(ls -lR | awk NR> 1 {print $1 "\t" $9)}	 
		if [[ grep <* ]]; then #need to extract just the permissions
			#variable containing the contents of the old permissions
			oldpermissions =  ${$line:0:10}
			#compare oldpermissions and checking and output the differences
			if ["$oldpermissions" != "$checking"]; then
				echo $oldpermissions 
			fi
		else [[ grep >* ]]
			#variable containing the contents of new permissions
			#compare newpermissions and checking and output the differences
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
	chmod  oldpermissions[$i] filenames[$i] 
done   
fi 







