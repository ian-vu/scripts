#!/bin/bash

# Script to copy all RAF files from folder B that have a matching JPG file in folder A to folder C

# Set the paths to the folders
folderA="/Users/ivu/Downloads/temp"
folderB="/Volumes/sandisk-ssd/camera/all-backup"
folderC="/Users/ivu/Downloads/temp3"

# Find all JPG files in folder A
find "$folderA" -type f -name "*.jpg" | while read -r fileA; do
    # Get the base filename without extension
    filename=$(basename "$fileA" .jpg)
    
    # Check if a matching RAF file exists in folder B
    fileB="$folderB/$filename.RAF"
    if [ -f "$fileB" ]; then
        # Copy the matching RAF file to folder C
        cp "$fileB" "$folderC"
    fi
done
