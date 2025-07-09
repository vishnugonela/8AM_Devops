#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

JAVA_DIR="$1"
COUNT=0

echo "Searching for .java files in: $JAVA_DIR"

# Use find with piping to while-loop; increment COUNT inside subshell workaround
find "$JAVA_DIR" -type f -name "*.java" | while IFS= read -r FILE; do
  echo "Found: $FILE"
  ((COUNT++))
done
