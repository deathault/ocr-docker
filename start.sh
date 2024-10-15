#!/bin/bash

# Проверяем, что переданы входной и выходной файлы
if [ "$#" -ne 2 ]; then
    echo "Используем: $0 input_file output_file"
    exit 1
fi

input_file=$1
output_file=$2

ocrmypdf -j 2 -l rus --tesseract-pagesegmode 3 "$input_file" "$output_file"