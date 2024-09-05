#!/bin/bash

# Source and destination directories
source_dir=~Scripts/raw  
dest_dir=~Scripts/json_and_CSV"     

# Create destination directory if it doesn't exist
mkdir -p "$dest_dir"

# Move all CSV and JSON files from source to destination
mv "$source_dir"/*.csv "$dest_dir" 
mv "$source_dir"/*.json "$dest_dir" 

# Check if any files were moved and output the result
if [ "$(ls -A $dest_dir/*.csv )" ] || [ "$(ls -A $dest_dir/*.json l)" ]
 then
    echo "CSV and JSON files moved successfully to $dest_dir."
else
    echo "No CSV or JSON files found in $source_dir."
fi

# List the files in the destination folder
echo "Contents of $dest_dir:"
ls "$dest_dir"
