#!/bin/bash
# Batch chmod tool

echo "Enter the folder path:"
read folder

echo "Setting all files in $folder to 644 permissions..."
find "$folder" -type f -exec chmod 644 {} \;

echo "Setting all directories to 755 permissions..."
find "$folder" -type d -exec chmod 755 {} \;

echo "Permissions updated."
