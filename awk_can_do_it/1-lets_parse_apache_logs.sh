#!/bin/bash

filepath=$1           # the first argument will be treated as file to parse

# print the fields of ea. line corresponding to IP addr and HTTP_CODE
while read line
do
    echo $line | awk '{print $1,$9}'
done < $filepath
