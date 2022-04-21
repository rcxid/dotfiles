#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer',
  'alpha',
  'autosave',
  'lspconfig',
  'nvim-cmp',
  'snippets',
  'rnvimr',
  'vim-choosewin',
  'lualine',
  'bufferline',
  -- 'vim-floaterm',
  'toggleterm',
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
  'nvim-autopairs',
}

module.setup(modules, prefix)
