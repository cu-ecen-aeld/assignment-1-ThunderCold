#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Please provide the full path to a file and the text string to write."
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to the file '$writefile'."
    exit 1
else
    echo "File '$writefile' created successfully with content: '$writestr'"
fi
