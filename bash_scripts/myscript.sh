#! /bin/bash

csv_link="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"

dir=~/Scripts/raw

# create the directory if it doesn't exist

mkdir -p "$dir"

curl -o $dir/file.csv  $csv_link 

if [ -f $dir/file.csv ]
then
    echo "File saved succefully"
else
    echo "An error occured"
fi
