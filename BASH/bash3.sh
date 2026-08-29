#!/bin/bash
echo "Hello world "

name=$1
read -p "Please enter your age here " age
echo $age
sleep 4
if [[ "$age" -lt  25 ]] ; then
echo "You will need to work hard bro "
else 
	echo "dont give up bro "
fi

