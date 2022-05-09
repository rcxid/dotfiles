#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins'

local modules = {
  'packer',
  'alpha',
  'autosave',
  'lspconfig',
  'nvim-lsp-installer',
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
  'project',
  'which-key',
  'neovim-session-manager'
}

module.setup(modules, prefix)
