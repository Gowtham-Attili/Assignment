#!/bin/bash
echo "Enter directory path:"
read -p "Path: " path
for file in "$path"/*; do
    if [ -f "$file" ]; then
        echo "File: $file"
        size=$(stat -c %s "$file")
        echo "Size: $size bytes"
    elif [ -d "$file" ]; then
        echo "Directory: $file"
    else
        echo "Unknown error"
    fi
done