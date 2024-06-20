
# in the begining of the string

for FILE in *.mp3; do
    # Extract the base filename (without path)
    BASENAME=$(basename "$FILE")
    
    # Check if the filename starts with the target string
    if [[ "$BASENAME" == "(MP3_160K)"* ]]; then
        # Construct the new filename by removing the target string
        NEW_BASENAME="${BASENAME#"(MP3_160K)" }"
        
        # Rename the file
        mv "$FILE" "$NEW_BASENAME"

        echo "Renamed: $FILE to $NEW_BASENAME"
    fi
done

# someWHere in string 

for FILE in *.mp3; do
    # Extract the base filename (without path)
    BASENAME=$(basename "$FILE")
    
    # Check if the filename contains the target string
    if [[ "$BASENAME" == *"(MP3_160K)"* ]]; then
        # Construct the new filename by removing the target string
        NEW_BASENAME="${BASENAME//\(MP3_160K\)}"
        
        # Trim leading and trailing spaces
        NEW_BASENAME=$(echo "$NEW_BASENAME" | xargs)
        
        # Rename the file
        mv "$FILE" "$NEW_BASENAME"

        echo "Renamed: $FILE to $NEW_BASENAME"
    fi
done