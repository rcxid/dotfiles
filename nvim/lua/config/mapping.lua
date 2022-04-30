#!/bin/lua

local keymap = require('core.keymap')

local options = {
  noremap = true,
  silent = true,
}

-- 按键映射配置
local mappings = {
  -- nvim基本按键配置
  { 'i',        'jj',           '<Esc>',                            options },
  { 'i',        'jk',           '<Esc>',                            options },
  { 'n',        '<tab>',        ':bNext<CR>',                       options },
  { 'i',        '<C-u>',        '<Esc>viwUi',                       options },
  { 'n',        '<C-u>',        'viwU<Esc>',                        options },
  { 'n',        '<A-h>',        '<C-w>h',                           options },
  { 'n',        '<A-j>',        '<C-w>j',                           options },
  { 'n',        '<A-k>',        '<C-w>k',                           options },
  { 'n',        '<A-l>',        '<C-w>l',                           options },
  { 'n,i',      '<C-s>',        '<Esc>:w<CR>',                      options },
  { 'n,i',      '<C-q>',        '<Esc>:wq<CR>',                     options },
  { 'n,i,v',    '<Up>',         '<Nop>',                            options },
  { 'n,i,v',    '<Down>',       '<Nop>',                            options },
  { 'n,i,v',    '<Left>',       '<Nop>',                            options },
  { 'n,i,v',    '<Right>',      '<Nop>',                            options },
  -- telescope按键配置
  { 'n',        '<space>ff',    '<cmd>Telescope find_files<cr>',    options },
  { 'n',        '<space>fg',    '<cmd>Telescope live_grep<cr>',     options },
  { 'n',        '<space>fb',    '<cmd>Telescope buffers<cr>',       options },
  { 'n',        '<space>fh',    '<cmd>Telescope help_tags<cr>',     options },
  -- nvim-tree按键配置
  { 'n',        '<C-n>',        ':NvimTreeToggle<CR>',              options },
  { 'n',        '<space>r',     ':NvimTreeRefresh<CR>',             options },
  { 'n',        '<space>n',     ':NvimTreeFindFile<CR>',            options },
}

-- 加载按键映射配置
keymap.load_mapping_configs(mappings)
