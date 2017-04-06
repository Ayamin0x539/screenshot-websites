#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No command line input found."
    echo "Enter the file name of a text file containing websites to screenshot."
    exit
fi    

FILE_NAME="$1"

echo "Analyzing file:" $FILE_NAME

while read line; do
    echo "Screenshotting" $line "..."
    phantomjs ghostie.js $line
done < $1
