#!/bin/lua

local module = require('core.util.module')

local prefix = 'themes'

local modules = {
  -- 'gruvbox-material'
  -- 'onedark'
  'darkplus'
}

module.load_modules(modules, prefix)
