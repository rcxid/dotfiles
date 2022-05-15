#!/bin/lua

local keymap = require('core.keymap')

local options = {
  noremap = true,
  silent = true,
}

-- 按键映射配置
local mappings = {
  -- nvim基本按键配置
  { 'i',     'jj',           '<Esc>',                            options },
  { 'i',     'jk',           '<Esc>',                            options },
  { 'n',     '<tab>',        ':bNext<CR>',                       options },
  { 'i',     '<C-u>',        '<Esc>viwUi',                       options },
  { 'n',     '<C-u>',        'viwU<Esc>',                        options },
  { 'n',     '<A-h>',        '<C-w>h',                           options },
  { 'n',     '<A-j>',        '<C-w>j',                           options },
  { 'n',     '<A-k>',        '<C-w>k',                           options },
  { 'n',     '<A-l>',        '<C-w>l',                           options },
  { 'n,i',   '<C-s>',        '<Esc>:w<CR>',                      options },
  { 'n,i',   '<C-q>',        '<Esc>:wq<CR>',                     options },
  { 'n,i,v', '<Up>',         '<Nop>',                            options },
  { 'n,i,v', '<Down>',       '<Nop>',                            options },
  { 'n,i,v', '<Left>',       '<Nop>',                            options },
  { 'n,i,v', '<Right>',      '<Nop>',                            options },
  -- telescope
  { 'n',     '<space>ff',    '<cmd>Telescope find_files<cr>',    options },
  { 'n',     '<space>fg',    '<cmd>Telescope live_grep<cr>',     options },
  { 'n',     '<space>fb',    '<cmd>Telescope buffers<cr>',       options },
  { 'n',     '<space>fh',    '<cmd>Telescope help_tags<cr>',     options },
  -- nvim-tree
  { 'n',     '<C-n>',        ':NvimTreeToggle<CR>',              options },
  { 'n',     '<space>r',     ':NvimTreeRefresh<CR>',             options },
  { 'n',     '<space>n',     ':NvimTreeFindFile<CR>',            options },
  -- vim-floaterm
  { 'n,i',   '<C-t>',        '<Esc>:FloatermToggle<CR>',         options },
  -- tagbar
  { 'n',     '<A-b>',        ':TagbarToggle<CR>',                options },
  -- ranger
  { 'n',     '<C-r>',        ':RnvimrToggle<CR>',                options },
  -- jdtls
  { 'n',     '<space>jf',    '<Cmd>lua vim.lsp.buf.formatting()<CR>'     },
  { 'n',     '<space>ji',    '<Cmd>lua vim.lsp.buf.code_action()<CR>'    },
  { 'n',     '<space>jo',    "<Cmd>lua require('jdtls').organize_imports()<CR>" },
  { 'n',     '<space>jc',    "<Cmd>lua require('jdtls').extract_constant()<CR>" },
  { 'v',     '<space>jc',    "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>" },
  { 'n',     '<space><CR>',  "<Cmd>lua require('jdtls').extract_variable()<CR>" },
  { 'v',     '<space><CR>',  "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>" },
  { 'v',     '<space>m',     "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>" },
  { 'n',     '<space>df',    "<Cmd>lua require('jdtls').test_class()<CR>" },
  { 'n',     '<space>dn',    "<Cmd>lua require('jdtls').test_nearest_method()<CR>" },
}

-- 加载按键映射配置
keymap.setup(mappings)
