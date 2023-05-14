#!/bin/bash

if [ $# -lt 1 ]; then
  echo Not Enough Arguement!
  exit
fi

for file in $1; do
  if [ -e $file ]; then
    pdir=$(cd -P $(dirname $file); pwd)
    fname=$(basename $file)
    file_name="$pdir/$fname"
    echo $file_name
  else
    echo $file does not exists!
  fi
done
