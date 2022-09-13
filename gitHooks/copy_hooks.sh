#!/bin/bash

#DIR=/Users/nichaurasia/Documents/ClonedCode
DIR=/Users/nichaurasia/Downloads/test
DIRS=$(find $DIR -name "*.git")

# Copy the pre-commit hook to all the Code cloned into DIR variable
for dest in $DIRS; do
  curl -fL -o "$dest/hooks/pre-commit" https://raw.githubusercontent.com/nitinkc/SystemEnvironment/master/gitHooks/pre-commit
  chmod +x "$dest/hooks/pre-commit"
  stat -f "%A %Sp %N" "$dest/hooks/pre-commit" #works on MacOS
done
