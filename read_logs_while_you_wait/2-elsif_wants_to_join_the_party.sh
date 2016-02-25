#!/bin/bash

while read line
do
   if [[ $line == *HEAD* ]] 
      then let "HEAD+=1"
   elif [[ $line == *GET* ]]
      then let "GET+=1"
   fi
done < $1

echo $HEAD
echo $GET
