#!/bin/bash

STR="sed -E 's/bells/phones/g' edgarAllen.txt"
SUB="${CODIO_FREE_TEXT_ANSWER}"

# sed -E 's/bells/phones/g' edgarAllen.txt

if [[ "$STR" == "$SUB" ]]; then
  echo "Great Job!"
  exit 0
else
  echo "This command is incorrect. Please try again!"
  exit 1
fi