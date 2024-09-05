#!/bin/bash

file_name="2023_year_finance.csv"
source_file=~/Scripts/Transformed/2023_year_finance.csv
dest_dir=~/Scripts/Gold

# Create destination directory if it doesn't exist
mkdir -p $dest_dir

# copy the file to the destination directory
cp $source_file $dest_dir/

# check if the file has been copied 
if [ -f "$dest_dir/$file_name" ]
then echo "File $source_file copied successfully to $dest_dir."
     # list the contents
     echo "Contents of $dest_dir:"
     ls $dest_dir
else
    echo "$source_file could not be copied"
fi
