#!/bin/bash
while true ; do

read -p "enter source directories to archive ( press q to exit ): " source_folder
if [[ $source_folder = "q" ]] ; then

   
   echo "exiting....."
   break;


elif [[ -d $source_folder ]]; then

    read -p "enter directories where to place archive file ( press q to exit ): " destination_folder
    
    if [[ $destination_folder = "q" ]] ; then

     
   
     echo "exiting....."
     break;

    elif [[ -d $destination_folder ]]; then
   
     date=$(date  +%Y-%m-%d)
    
     tar -czf "$destination_folder/$(basename "$source_folder")-$date.tar.gz" "$source_folder"

     echo "$source_folder successfully archive"

     echo "do you want to continue to backup more?"
     read -p "(Y/n):" cont
       if [[ $cont =~ ^[Yy]$ ]]; then
         continue
       else 
         echo "exiting....."
         break;
       fi
    
    else

     echo "sorry no $destination_folder exits, try again"

    fi

else 

 echo "sorry no $source_folder exits, try again "

fi 

done

