#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer',
  'alpha',
  'lspconfig',
  'nvim-cmp',
  'snippets',
  'rnvimr',
  'vim-choosewin',
  'lualine',
  'bufferline',
  'vim-floaterm',
  'nvim-tree',
  'rust-tools',
  'python',
  'golang',
  -- 'groovy',
  'lua-language-server',
  'tagbar',
  'telescope',
  'gitsigns',
  'diffview',
}

module.setup(modules, prefix)
