#!/bin/lua

local module = require('core.util.module')

local prefix = 'config'

-- 要加载的模块配置
local modules = {
  'setting',
  'mapping',
}

-- 加载模块
module.load_modules(modules, prefix)
