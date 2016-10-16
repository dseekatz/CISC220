
#!/bin/bash

if [ "$1" = '-s' ]; then
echo "OLD" "CURRENT" "FILE"
	for line in [[  $(diff file1.sh file2.sh) ]]; do
	#create a counter to store 3 variables to store permissions
 	#counter=0	 
		if [[ grep <* ]]; then #need to extract ;ust the permissions
			oldpermissions[counter] =  ${$line:0:10}
		else [[ grep >* ]]
			newpermissions[counter] = ${$line:0:10}
			filenames[counter] = ${$line:11}
		fi
	done
fi

for i in `seq 0  ${#filenames[@]}` do
	if [ "$newpermissions[$i]" -ne "$oldpermissions[$i]" ]; then  #to get columns
	echo filenames[i] | column | newpermissions | column | oldpermissions
	echo  "\n"
fi
done 
	
#elif [ "$1" == 'r ' ];
#chmod  






