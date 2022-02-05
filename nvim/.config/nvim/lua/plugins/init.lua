#!/bin/lua

local module = require('core.util.module')

local modules = {
    'plugins.packer', 
    'plugins.lspconfig', 
    'plugins.nvim-cmp', 
    'plugins.snippets',
    'plugins.rnvimr',
    'plugins.vim-choosewin',
    'plugins.defx-icons'
    -- 'plugins.rust-analyzer',
}

module.load_modules(modules)