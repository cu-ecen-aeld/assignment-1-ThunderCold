#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Please provide the full path to a file and the text string to write."
    exit 1
fi

writefile="$1"
writestr="$2"

dir=$(dirname "$writefile")

if [ ! -d $dir ]; then
	mkdir -p "$dir"
fi

if [ ! -f $writefile ]; then
    touch $writefile
fi

echo "$writestr" > "$writefile"