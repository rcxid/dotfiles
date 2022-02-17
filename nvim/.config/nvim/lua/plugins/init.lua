#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer', 
  'lspconfig', 
  'nvim-cmp', 
  'snippets',
  'rnvimr',
  'vim-choosewin',
  'vim-airline',
  'vim-floaterm',
  'nvim-tree',
  'rust',
  'lsp',
}

module.load_modules(modules, prefix)
