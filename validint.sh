#Name: Tee Hock Nian 
#Student Number: 10533790

#!/bin/bash


while true; do

read -p "Enter a two digit number from 20 to 40 inclusively:" num1

if [[ $num1 =~ ^[0-9]{2} ]] && [ $num1 -ge 20 -a $num1 -le 40 ]; then

   echo "Congratulations, you have entered a valid input." 
   exit 0;

   else

   echo "Invalid input, please try again."

   fi

done

