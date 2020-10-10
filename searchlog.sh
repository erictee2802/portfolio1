# Name: Tee Hock Nian
# Student Number: 10533790

#!/bin/bash



scount=0

while true; do

if [ $scount == 0  ];then
read -p "[1] To Search or [2] To Exit: "
else
read -p "[1] To Search Again or [2] To Exit:"
clear
fi

if [ $REPLY == 1 ]; then

 while true;do
 echo ""
 echo -e "Choose the pattern to be searched for:\n[1]Alphabetical Character\n[2]Digit"
 read -p "Enter your choice: " choice1

 if [ $choice1 == 1 ] || [ $choice1 == 2 ]; then
 while true;do
 echo ""
 echo -e "Match Type:\n[1]Exact Match\n[2]Any Substring Match"
 read -p "Enter your choice: " choice2
 if [ $choice2 == 1 ] || [ $choice2 == 2 ]; then
  while true;do 
   echo ""
   echo -e "Inverted Option:\n[1]Yes\n[2]No"
   read -p "Enter your choice: " choice3
   if [ $choice3 == 1 ] || [ $choice3 == 2 ]; then
   break
   else
   echo "Invalid Input!"
   fi
   done
 break
 else
 echo "Invalid Input!"
 fi
 done

 break
 else 
 echo "Invalid Input!"
 fi
 done

 clear

 read -p "Enter keywords to search:" term
    
           
    echo ""
    echo "RESULTS:"

if [ $choice1 == 1 ];then # Alphabetical Characters Selected
    
    if [[ $term =~ [[:alpha:]] ]];then #Contain Only Alphabetical Characters
      
      if [ $choice2 == 1 ]; then
 
        if [ $choice3 == 1 ]; then #Exact Match + Inverted Option 

         grep -wvin $term access_log.txt
         echo ""
         echo "$( grep -wvin $term access_log.txt | wc -l ) matches have been found!"

        elif [ $choice3 == 2 ]; then #Exact Match + No Inverted Option

         grep -win $term access_log.txt
         echo ""
         echo "$(grep -win $term access_log.txt | wc -l ) matches have found!"



        else 
            echo "Invalid Input!"
        fi 


    elif [ $choice2 == 2 ]; then
      
        if [ $choice3 == 1 ]; then #Any Substring Match + Inverted Option
            
         grep -vin $term access_log.txt
         echo ""
         echo "$(grep -vin $term access_log.txt | wc -l) matches have found!"   

        elif [ $choice3 == 2 ];then #Any Substring Match + No Inverted Option
            
         grep -in $term access_log.txt
         echo ""
         echo "$(grep -in $term access_log.txt | wc -l) matches have found!" 

         else
            echo "Invalid Input!"
         fi

    else
    echo "Invalid Input!"
    fi

else
echo "Invalid Input!"
fi 

elif [ $choice1 == 2 ];then #Digit Numbers Selected

    if [[ $term =~ ^[0-9]+.?[0-9]*$ ]];then #Contains Only Digit Numbers

     if [ $choice2 == 1 ]; then
 
        if [ $choice3 == 1 ]; then #Exact Match + Inverted Option 

         grep -wvin $term access_log.txt
         echo ""
         echo "$( grep -wvin $term access_log.txt | wc -l ) matches have been found!"

        elif [ $choice3 == 2 ]; then #Exact Match + No Inverted Option

         grep -win $term access_log.txt
         echo ""
         echo "$(grep -win $term access_log.txt | wc -l ) matches have found!"



        else 
            echo "Invalid Input!"
        fi 


    elif [ $choice2 == 2 ]; then
      
        if [ $choice3 == 1 ]; then #Any Substring Match + Inverted Option
            
         grep -vin $term access_log.txt
         echo ""
         echo "$(grep -vin $term access_log.txt | wc -l) matches have found!"   

        elif [ $choice3 == 2 ];then #Any Substring Match + No Inverted Option
            
         grep -in $term access_log.txt
         echo ""
         echo "$(grep -in $term access_log.txt | wc -l) matches have found!" 

         else
            echo "Invalid Input!"
        fi

    else
    echo "Invalid Input!"
    fi

else
echo "Invalid Input!"
fi

else
echo "Invalid Input!"
fi














((scount++))






elif [ $REPLY == 2 ]; then 

exit 0

else

echo "Invalid Input!"

fi








done



