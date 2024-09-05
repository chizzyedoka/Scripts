#! /bin/bash
old_col="Variable_code"
new_col="variable_code"

# change column name
sed -i '1s/Variable_code/variable_code/' ~/Scripts/raw/file.csv

new_dir="Transformed"

if [ -d ~/Scripts/Transformed ]
then echo "csv file already transformed"
else
    mkdir ~/Scripts/Transformed
    csvcut -c Year,Value,Units,variable_code ~/Scripts/raw/file.csv > ~/Scripts/Transformed/2023_year_finance.csv
     echo "created trabsformed csv"
fi

