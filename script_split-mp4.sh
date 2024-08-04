#!/bin/bash

# Directory containing the source videos
SOURCE_DIR="Videos"

# Directory where the split videos will be stored
OUTPUT_DIR="Rendered"

# Maximum file size (in kilobytes)
MAX_SIZE=$((3*1024*1024)) # 3GB in KB

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Process each .mp4 file in the source directory
for file in "$SOURCE_DIR"/*.mp4; do
    if [ -f "$file" ]; then
        # Extract the filename without extension
        base_name=$(basename "$file" .mp4)

        echo "Processing $file"

        # Split the file using ffmpeg
        ffmpeg -i "$file" -c copy -map 0 -segment_time 00:30:00 -f segment -segment_format_options movflags=+faststart -reset_timestamps 1 -segment_list "$OUTPUT_DIR/${base_name}_list.txt" "$OUTPUT_DIR/${base_name}_%03d.mp4"
    fi
done

echo "Splitting complete."
