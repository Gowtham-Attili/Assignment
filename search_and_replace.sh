#!/bin/bash/
echo "enter file name"
read -p "Filename: " file
if [[ -f $file ]]; then
        echo "file exists"
        read -p "enter word you want to replace:" word
        read -p "enter new word:" new_word
        sed -i "s/$word/$new_word/g" "$file"
else
        echo "file not found"
fi