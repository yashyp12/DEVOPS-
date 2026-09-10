#!/bin/bash 
name="Yash Patil"
echo "Hello world what you are doing today  $name "
read -p "What is your age " age
echo " Okay so your age is  $age"

if [[  "$age" -lt 30 ]]; then
     echo " Your age is less than 30 "
elif [[ "$age" -gt 15 ]]; then
     echo " Your  age is greatet than 15 "
else 
     echo " Please answer with correct option " 
fi


