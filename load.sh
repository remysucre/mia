#!/bin/bash

# Loop over each file in the current directory
for file in 1002/*; do
    echo "$(basename "$file")"
    sqlite-utils insert 1002.db "$(basename $file)" "$file" --empty-null --csv || break
done

