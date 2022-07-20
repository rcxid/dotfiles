#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins.lsp'

local modules = {
  'lspconfig',
  'nvim-lsp-installer',
  'clangd',
  'golang',
  'lua',
  'python',
  'rust',
  'html'
}

module.setup(modules, prefix)
