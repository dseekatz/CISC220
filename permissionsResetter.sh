permissionsResetter.sh
#!/bin/bash

echo "Press '-s' to show the files and directories that had their permissions changed along with the old and current permissions"
echo "Press '-r' to reset the permissions of the files and directories that had their permissions changed to the old permissions"
#pass in awrguments
$/permissionsResetter.sh -s -r

if [$1 == '-s'];
echo "OLD" "CURRENT" "FILE"
for line in [ $ (diff file1.sh file2.sh);]
	#create a counter to store 3 variables to store permissions
	counter=0	 
	if grep <*  #need to extract just the permissions
	oldpermissions[counter] =  ${$line:0:10}
	else grep >*
	newpermissions[counter] = ${$line:0:10} 
	filenames[counter] = ${$line:11}
for i in `seq 0  ${#filenames[@]}`
echo -ne oldpermissions[i]  #to get columns
echo -ne newpermissions[i]
echo -ne filenames[i]
echo  "\n"

	




#else if [$1 == 'r'];

 




