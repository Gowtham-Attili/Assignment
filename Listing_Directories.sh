#!/bin/bash
echo "Enter directory path:"
read -p "Path: " path
file_count=0
dir_count=0
for file in "$path"/*; do
    if [ -f "$file" ]; then
        ((file_count++))
        echo "File: $file"
    elif [ -d "$file" ]; then
        ((dir_count++))
        echo "Directory: $file"
    else
        echo "Unknown error"
    fi
done
echo "Number of files is: $file_count"
echo "Number of directories is: $dir_count"