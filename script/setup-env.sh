#!/bin/bash

if [ -d ~/script/env ]; then
  for i in ~/script/env/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
