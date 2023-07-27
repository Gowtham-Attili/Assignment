#!/bin/bash
echo "Enter path of directory"
read -p "Backup_dir: " dir
if [ ! -d "$dir" ]; then
    echo "No such directory"
    exit 1
fi
read -p "no of files to keep: " N
cd "$dir" || exit
backup_files=$(ls -t | grep -E 'backup_file_pattern')
total=$(echo "$backup_files" | wc -l)
files_to_del=$((total - N))
if [ "$files_to_del" -gt 0 ]; then
    echo "Deleting old backups..."
    echo "$backup_files" | tail -n "$files_to_del" | xargs rm -f
else
    echo "No older backup files to delete."
fi