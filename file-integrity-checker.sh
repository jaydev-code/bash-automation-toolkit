#!/bin/bash

file="file_info.sh"
file_info_hash="file_info_hash.txt"


if [[ ! -f "$file_info_hash" ]]; then
   echo "saving fingerprint of $file"
   md5sum "$file" > "$file_info_hash"
   echo "done.."
   exit 0

fi 
