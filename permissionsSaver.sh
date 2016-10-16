#!/bin/bash

targetFile="savedPermissions"	# Initialize the name of the file that will contain the saved permissions
counter=1
while [ -e $targetFile ] ; do	# If the target file exists, change the name of the target file and try again...
	if [[ $counter == 1 ]] ; then
		targetFile="$targetFile$counter" ;
	else
		targetFile="savedPermissions$counter" ;
	fi
	(( counter=$counter+1 )) ;
done
ls -l | awk 'NR>1 {print $1 "\t" $9}' > $targetFile	# Take the first and ninth columns of the list of files
echo "$targetFile created!"				# and write them to the target file, ignoring the first line
