#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer',
  'alpha',
  'autosave',
  'comment',
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
  'nvim-treesitter',
  'telescope',
  'gitsigns',
  'diffview',
  'nvim-autopairs',
  'symbols-outline',
  -- 'indent-blankline',
  'todo-comments',
  'project',
  'which-key',
  'neovim-session-manager',
  'neovim-cmake',
  'lsp',
  'aerial'
}

module.setup(modules, prefix)
