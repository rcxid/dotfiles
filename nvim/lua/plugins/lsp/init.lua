#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins.lsp'

local modules = {
  'lspconfig',
  -- 'nvim-lsp-installer',
  'mason',
  'clangd',
  'golang',
  'lua',
  'python',
  'rust',
  'html',
  'css'
}

module.setup(modules, prefix)
