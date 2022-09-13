#!/bin/bash

DIR=/Users/nichaurasia/Documents/ClonedCode
DIRS=$(find $DIR -name "*.git")
echo "$DIRS"
#find "$DIR" -type d |
#find "$DIR" -name \*.git
#while read d;
#do
#    files=$(ls -t "$d" | sed -n '1h; $ { s/\n/,/g; p }')
#    printf '%s,%s\n' "$files";
#done
#
#exit 0

for dest in $DIRS; do
  #cp -v pre-commit "$dest/hooks"
  echo "$dest/hooks"
done
