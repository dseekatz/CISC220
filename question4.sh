question 4
#!/bin/bash

#While the directory exists, create a new file each time to store the latest permissions
while [-d "$DIRECTORY"]; 
do touch /path/to/file
done

 
