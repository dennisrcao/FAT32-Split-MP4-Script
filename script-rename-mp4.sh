#!/bin/bash

# Loop over all .mp4 files in the current directory
for file in *.mp4; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Generate a random number as the prefix
        random_prefix=$((RANDOM))

        # Extract the base name of the file
        base_name=$(basename "$file" .mp4)

        # Rename the file with the random prefix and the original base name
        mv -- "$file" "${random_prefix}_${base_name}.mp4"
    fi
done

echo "Renaming complete."
