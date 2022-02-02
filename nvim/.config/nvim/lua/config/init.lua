#!/bin/lua

local module = require('core.util.module')

-- 要加载的配置
local modules = {
    'config.setting',
    'config.mapping',
}

-- 加载模块
module.load_modules(modules)