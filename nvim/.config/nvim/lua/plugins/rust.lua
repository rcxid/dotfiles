#!/bin/lua

vim.cmd([[
syntax enable
filetype plugin indent on
]])

require('core.keymap').load_mapping_configs({
  { 'n', '<Leader>r', ':RustRun<CR>' },
})
