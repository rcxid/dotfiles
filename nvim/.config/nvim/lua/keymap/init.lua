#!/bin/lua

local bind = require('keymap.bind')
local map_cmd = bind.map_cmd

-- 按键映射配置
local configs = {
    map_cmd('i|jj|<Esc>'),
    map_cmd('i|jk|<Esc>'),
    map_cmd('n,i,v|<Up>|<Nop>'),
    map_cmd('n,i,v|<Down>|<Nop>'),
    map_cmd('n,i,v|<Left>|<Nop>'),
    map_cmd('n,i,v|<Right>|<Nop>'),
    map_cmd('n,i|<C-s>|<Esc>:w<CR>'),
    map_cmd('n,i|<C-q>|<Esc>:wq<CR>'),
    map_cmd('n|<space>|viw'),
    map_cmd('n|<tab>|:bNext<CR>'),
}

-- 加载按键映射配置
bind.load_mapping_configs(configs)

-- 窗口切换
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l
