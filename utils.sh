#!/bin/bash

folderPath=/var/www/html/DigitalNetwork/
logFolderPath=/var/log/server/
logFilePath=/var/log/server/ftp_log.txt

function isFileExists(){
    status=false
if [ -e $logFilePath ]
  then
    status=true #File Found 
fi
return $status
}


function createFile(){
echo $logFilePath
}

function currentTime(){
 retrun $(date +%s)
}
