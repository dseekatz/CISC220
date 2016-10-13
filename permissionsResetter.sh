function permissionsResetter $1 $2 { 
#!/bin/bash

if [$1 == '-s']; then
echo "OLD" "CURRENT" "FILE"
for line in [ $ (diff file1.sh file2.sh);]
	#create a counter to store 3 variables to store permissions
	counter=0
	fi	 
	if [[ grep <* ]]; then #need to extract ;ust the permissions
		oldpermissions[counter] =  ${$line:0:10}
	else if [[ grep >* ]]
		newpermissions[counter] = ${$line:0:10} 
		filenames[counter] = ${$line:11}
	fi
done
for i in `seq 0  ${#filenames[@]}`
	echo -ne oldpermissions[i]  #to get columns
	echo -ne newpermissions[i]
	echo -ne filenames[i]
	echo  "\n"
done 
	

}


#else if [$1 == 'r'];






