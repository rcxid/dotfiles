#!/bin/bash

if [ $# -lt 1 ]; then
  echo Not Enough Arguement!
  exit
fi

for file in $1; do
  echo $file
done
