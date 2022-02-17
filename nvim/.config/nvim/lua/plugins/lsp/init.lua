#!/bin/lua

local module = require('core.util.module')

local prefix = 'plugins.lsp'

-- 要加载的配置
local modules = {
  'rust-analyzer'
}

-- 加载模块
module.load_modules(modules, prefix)
