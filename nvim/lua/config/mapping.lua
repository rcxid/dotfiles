#!/bin/lua

local options = {
  noremap = true,
  silent = true,
}

-- 加载按键映射配置
require('core.keymap').setup {
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
  -- buffer
  { 'n',        '<space>q',     ':bd<cr>',                          options },
  -- telescope
  { 'n',        '<space>ff',    '<cmd>Telescope find_files<cr>',    options },
  { 'n',        '<space>fg',    '<cmd>Telescope live_grep<cr>',     options },
  { 'n',        '<space>fb',    '<cmd>Telescope buffers<cr>',       options },
  { 'n',        '<space>fh',    '<cmd>Telescope help_tags<cr>',     options },
  -- nvim-tree
  { 'n',        '<C-n>',        ':NvimTreeToggle<CR>',              options },
  { 'n',        '<space>tr',    ':NvimTreeRefresh<CR>',             options },
  { 'n',        '<space>tf',    ':NvimTreeFindFile<CR>',            options },
  -- vim-floaterm
  { 'n,i',      '<C-t>',        '<Esc>:FloatermToggle<CR>',         options },
  -- tagbar
  { 'n',        '<A-b>',        ':TagbarToggle<CR>',                options },
  -- ranger
  { 'n',        '<C-r>',        ':RnvimrToggle<CR>',                options },
  -- rust
  { 'n',        '<space>rr',    ':RustRunnables<CR>',               options },
  { 'n',        '<space>rh',    ':RustHoverActions<CR>',            options },
  { 'n',        '<space>ro',    ':RustOpenCargo<CR>',               options },
  { 'n',        '<space>ri',    ':RustToggleInlayHints<CR>',        options },
  { 'n',        '<space>re',    ':RustExpandMacro<CR>',             options },
  -- cmake
  { 'n',        '<space>cc',    ':CMake create_project<CR>',        options },
  { 'n',        '<space>cb',    ':CMake build_all<CR>',             options },
  { 'n',        '<space>cr',    ':CMake run<CR>',                   options },
  { 'n',        '<space>ca',    ':CMake set_target_args<CR>',       options },
  { 'n',        '<space>cs',    ':CMake select_target<CR>',         options },
  -- neovim-session-manager
  { 'n',        '<space>sl',    ':SessionManager load_session<CR>', options },
}
