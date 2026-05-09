#!/bin/bash

# Configuration
SOURCE_DIR="./GoogleDriveExport"  # Path to unzipped Takeout folder
TARGET_DIR="./MarkdownArchive"    # Where you want the converted files

# Supported extensions for markitdown
EXTENSIONS="pdf|docx|pptx|xlsx|xls|html|csv|json|xml|zip"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Use find to search for files matching the extensions (case-insensitive)
find "$SOURCE_DIR" -type f -regextype posix-extended -iregex ".*\.($EXTENSIONS)$" | while read -r FILE; do
    
    # Calculate the relative path from the source directory
    REL_PATH="${FILE#$SOURCE_DIR/}"

    # Define the output path (changing extension to .md)
    OUT_FILE="$TARGET_DIR/${REL_PATH%.*}.md"

    # Get the directory name for the output file
    OUT_DIR=$(dirname "$OUT_FILE")

    # Create the mirrored directory structure
    mkdir -p "$OUT_DIR"

    # Convert if the markdown version doesn't exist yet
    if [ ! -f "$OUT_FILE" ]; then
        echo "Converting: $REL_PATH"

        # Run markitdown and redirect output to the new file
        markitdown "$FILE" > "$OUT_FILE" 2>/dev/null

    else
        echo "Skipping (already exists): $REL_PATH"
    fi
done

echo "Conversion complete! Files are located in $TARGET_DIR"