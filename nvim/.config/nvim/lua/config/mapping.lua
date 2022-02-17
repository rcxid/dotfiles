#!/bin/lua

local keymap = require('core.keymap')

local options = {
    noremap = true,
    silent = true,
}

-- 按键映射配置
local mappings = {
    { 'i',      'jj',       '<Esc>',        options },
    { 'i',      'jk',       '<Esc>',        options },
    -- { 'n',      '<space>',  'viw',          options },
    { 'n',      '<tab>',    ':bNext<CR>',   options },
    { 'i',      '<C-u>',    '<Esc>viwUi',   options },
    { 'n',      '<C-u>',    'viwU<Esc>',    options },
    { 'n',      '<C-h>',    '<C-w>h',       options },
    { 'n',      '<C-j>',    '<C-w>j',       options },
    { 'n',      '<C-k>',    '<C-w>k',       options },
    { 'n',      '<C-l>',    '<C-w>l',       options },
    { 'n,i',    '<C-s>',    '<Esc>:w<CR>',  options },
    { 'n,i',    '<C-q>',    '<Esc>:wq<CR>', options },
    { 'n,i,v',  '<Up>',     '<Nop>',        options },
    { 'n,i,v',  '<Down>',   '<Nop>',        options },
    { 'n,i,v',  '<Left>',   '<Nop>',        options },
    { 'n,i,v',  '<Right>',  '<Nop>',        options },
}

-- 加载按键映射配置
keymap.load_mapping_configs(mappings)
