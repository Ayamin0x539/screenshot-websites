#!/bin/bash

FILE_NAME="$1"

echo "Analyzing file:" $FILE_NAME

while read line; do
    echo "Screenshotting" $line "..."
    phantomjs ghostie.js $line
done < $1
