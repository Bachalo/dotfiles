#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: <input_file.md>"
    exit 1
fi

input_file="$1"
file_name=$(basename -- "$input_file")
file_name_without_extension="${file_name%.*}"

output_file="${file_name_without_extension}.pdf"

pandoc "$input_file" -o "$output_file" --pdf-engine=xelatex

echo "Conversion complete. Output file: $output_file"
