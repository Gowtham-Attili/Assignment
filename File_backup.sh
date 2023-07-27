#!/bin/bash
echo "enter the file name"
read -p "Filename: " file
if [ -f $file ]; then
        cp $file "$file.backup.$(date)"
        echo "file successfully backed up"
else
        echo "file does not exists"
fi
