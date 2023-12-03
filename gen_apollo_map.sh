#!/bin/bash

echo "Start generating Apollo map."

for index in $(seq -w 1 12); do
  if [ -f opendrive/town${index}/Town${index}.xodr ]; then
    echo start to convert \"opendrive/town${index}/Town${index}.xodr\" to \"apollo/town${index}/base_map.bin\"
    imap -f -i opendrive/town${index}/Town${index}.xodr -o apollo/town${index}/base_map.bin
  else
    echo \"opendrive/town${index}/Town${index}.xodr\" does not exist!
  fi
done
