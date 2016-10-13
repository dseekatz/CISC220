#!/bin/bash

targetFile="savedPermissions"
counter=1
while [ -e $targetFile ] ; do
	if [[ $counter == 1 ]] ; then
		targetFile="$targetFile$counter" ;
	else
		targetFile="savedPermissions$counter" ;
	fi
	(( counter=$counter+1 )) ;
done
ls -l | awk '{print $1 "\t" $9}' > $targetFile
echo "$targetFile created!"
