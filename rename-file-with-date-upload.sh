#!/bin/bash


file_to_rename=/path/file_to_rename.xml
date_to_rename=$(stat -f "%Sm" -t "%Y%m%d" "$file_to_rename")
cp $file_to_rename $file_to_rename.v"$data"
echo "file renamed to $data"