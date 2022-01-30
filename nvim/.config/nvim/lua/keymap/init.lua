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
}

-- 加载按键映射配置
for _, config in pairs(configs) do
    bind.load_mapping_config(config)
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


-- nnoremap <space> viw
keymap('n', '<space>', 'viw', opts)
keymap('n', '<tab>', ':bNext<CR>', opts)


-- 窗口切换
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l


