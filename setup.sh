#!/bin/bash

#source "utils.sh"

folderPath=/var/www/html/DigitalNetwork/
logFolderPath=/var/log/server/
logFilePath=/var/log/server/ftp_log.txt

timestamp=$(date +%s)
previous=$( tail -n 1 $logFilePath)

if [ $timestamp -lt $previous ]
then
   echo "if $previous < $timestamp"
else
   echo "Else $timestamp < $previous"

if [ -e $folderPath ]
then
echo "found"
sudo chmod 755 $folderPath -R
fi


fi

