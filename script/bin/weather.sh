#!/bin/bash

# 默认查看深圳天气
if [ $# -eq 1 ]; then
    curl wttr.in/$1
else
    curl wttr.in/shenzhen
fi
