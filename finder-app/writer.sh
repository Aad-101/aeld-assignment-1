#!/bin/sh

if [ -z "$1" ]; then
    echo "writefile was not specified"
    exit 1
fi

if [ -z "$2" ]; then
    echo "writestr was not specified"
    exit 1
fi

mkdir -p "$(dirname "$1")"


if ! echo "$2" > "$1";
then
    echo "file could not be created"
    exit 1  
fi