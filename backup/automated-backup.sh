#!/bin/bash

read -p "enter source directories to archive : " sour 
read -p "enter directories where to place archive file : " dest

date=$(date +%Y-%m-%d)

tar -czf "$dest/backup-$date.tar.gz" "$sour"

echo "$sour is successfully Archive : "

