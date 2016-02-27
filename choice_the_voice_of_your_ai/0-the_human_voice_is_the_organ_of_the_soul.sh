~#!/bin/bash

filename=$(echo $1 | awk '{print $1}') 

case $2 in
    'm')
	say -v Bruce -o "$filename.m4a" $1;;
    'f')
	say -v Victoria -o "$filename.m4a" $1;;
    'x')
	say -v cello -o "$filename.m4a" $1;;
esac

scp -i ~/.ssh/hbs_key ./$filename.m4a admin@$3:/var/www/html
echo "Listen to the message on http://$3/$filename.4a"
