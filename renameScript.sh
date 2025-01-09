#!/bin/bash

# Get today's date in YYYY_MM_DD format
DATE=$(date +"%Y_%m_%d")

# Initialize a counter
COUNT=1

# Iterate over each CSV file in the folder
for file in *.csv; do
    # Generate the new filename
    new_name="${DATE}_part${COUNT}.csv"

    # Rename the file
    mv "$file" "$new_name"

    # Increment the counter for the next file
    ((COUNT++))
done
