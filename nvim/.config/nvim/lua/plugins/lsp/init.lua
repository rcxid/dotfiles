#!/bin/lua

local module = require('core.util.module')

-- 要加载的配置
local modules = {
    'plugins.lsp.nvim-jdtls'
}

-- 加载模块
module.load_modules(modules)