#!/bin/sh

if [ -z "$1" ]; then
    echo "filesdir was not specified"
    exit 1
fi

if [ -z "$2" ]; then
    echo "searchstr was not specified"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "$1 is not a valid directory"
    exit 1
fi


num_files=$(find "$1" -type f | wc -l)

matching_lines=$(grep -r "$2" "$1" | wc -l)

echo "The number of files are ${num_files} and the number of matching lines are ${matching_lines}"
