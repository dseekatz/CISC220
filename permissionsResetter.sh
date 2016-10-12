permissionsResetter.sh
#!/bin/bash

echo "Press '-s' to show the files and directories that had their permissions changed along with the old and current permissions"
echo "Press '-r' to reset the permissions of the files and directories that had their permissions changed to the old permissions"
#pass in arguments
$/permissionsResetter.sh -s -r

if [$1 == '-s'];
echo stat question4.sh #or ls -lt
else if [$1 == 'r'];

 
 




