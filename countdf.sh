#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash

let num1=$(find $1 -type f | wc -l)          #number of files in current directory
let num2=$(find $1 -empty -type f | wc -l)   #number of empty files in current directory
let num3=$num1-$num2                         #number of files contain data
let num4=$(find $1 -type d | wc -l)          #number of directories in current directory
let num5=$(find $1 -empty -type d | wc -l)   #number of empty directories in current directory

if [ $num4 == 0 ];then
 
 let num4=num4

else

let num4-=1                                  #total numbers contain current directory, so we have to minus 1

fi


if [ $num5 == 1 ];then                      #This is for the case that a directory  contains nothing, if we do not minus 1, we get the answer negative 1 for $num6.

let num5-=1

else

let num5=num5

fi

let num6=$num4-$num5                         #number of non-empty directories

echo "The $1 directory contains:"
echo "$num3 files that contain data"
echo "$num2 files that are empty"
echo "$num6 non-empty directories"
echo "$num5 empty directories"

exit 0