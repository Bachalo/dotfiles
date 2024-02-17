#!/bin/bash

# Iterate over all files in the current directory
for file in *; do
    # Check if the file name contains spaces
    if [[ "$file" == *" "* ]]; then
        # Replace spaces with underscores
        new_name=$(echo "$file" | tr ' ' '_')

        # Rename the file
        mv "$file" "$new_name"

        echo "Renamed: $file to $new_name"
    fi
done

