#!/bin/bash

for i in ` find /tmp  -name "*.txt" -type f -mtime 10 -delete ` 
do 
 
     echo "files:$i"

      

done

