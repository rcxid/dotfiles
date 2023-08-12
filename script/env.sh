#!/bin/bash

export PATH=$PATH:/opt/nvim/bin
export PATH=$PATH:/opt/node/current/bin
export PATH=$PATH:~/.local/bin

# tmux快捷键
alias tls='tmux ls'
alias tnew='tmux new -s'
alias tatt='tmux attach -t'

alias proxy_on='export ALL_PROXY=http://127.0.0.1:7890'
alias proxy_off='unset ALL_PROXY'
