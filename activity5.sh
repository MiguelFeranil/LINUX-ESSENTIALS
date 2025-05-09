#!/bin/bash

# TASK 1 

for count in {1..10}; do
  echo "Count: $count"
done

# TASK 2 

count=0
until [ $count -eq 10 ]; do
  ((count++))
  if (( count % 2 == 0 )); then
    echo "Skipping $count"
    continue
  fi
  echo "$count"
done

# TASK 3 

for file in *.jpg; do
  newname="${file/%.jpg/.png}"
  mv "$file" "$newname"
  echo "Renamed $file to $newname"
done