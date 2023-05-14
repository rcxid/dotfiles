#!/bin/bash

for num in {$1..$2}; do
  echo $num
  # dd if=/dev/zero bs=1M count=4096 oflag=direct,nonblock conv=fsync status=progress of=/mnt/hdd/$num
done

echo "done"
