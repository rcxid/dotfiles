#!/bin/bash

if [ $# -lt 1 ]; then
  echo Not Enough Arguement!
  exit
fi

for file in $2; do
  if [ -e $file ]; then
    pdir=$(cd -P $(dirname $file); pwd)
    fname=$(basename $file)
    ssh $1 "mkdir -p $pdir"
    rsync -av $pdir/$fname $1:$pdir
  else
    echo $file does not exists!
  fi
done
