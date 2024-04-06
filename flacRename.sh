#!/bin/bash

# Loop through each FLAC file in the directory
for file in *.flac; do
    # Extract the filename without extension
    filename=$(basename "$file" .flac)
    
    # Extract the song title from the filename (4th character onwards)
    song_title="${filename:3}"
    
    # Set the song title metadata using metaflac
    ./metaflac.exe	--set-tag=TITLE="$song_title" "$file"
    
    # Print confirmation
    echo "Set song title for $file to \"$song_title\""
done