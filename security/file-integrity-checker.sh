#!/bin/bash

file="file_info.sh"
file_info_hash="file_info_hash.txt"


if [[ ! -f "$file_info_hash" ]]; then
   echo "saving fingerprint of $file"
   md5sum "$file" | cut -d' ' -f1 > "$file_info_hash"
   echo "done.."
   exit 0

fi 


echo "second run to check and confirm"

old_save_hash=$(cat "$file_info_hash")
save_new_hash=$( md5sum "$file" | cut -d' ' -f1 )

if [[ "$old_save_hash" = "$save_new_hash" ]] ; then

  echo "nothing changes to your $file" 

else

   echo "warning !! something changed to your $file"

fi
