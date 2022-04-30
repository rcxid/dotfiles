#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer',
  'alpha',
  'autosave',
  'lspconfig',
  'snippets',
  'nvim-cmp',
  -- 'rnvimr',
  -- 'vim-choosewin',
  'lualine',
  'bufferline',
  -- 'vim-floaterm',
  'toggleterm',
  'nvim-colorizer',
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
  'symbols-outline',
  'indent-blankline',
  'todo-comments',
  'project'
}

module.setup(modules, prefix)
