#!/bin/lua

local module = require('core.util.module')

local modules = {
  -- nvim基本配置
  'config', 
  -- nvim插件配置
  'plugins', 
  -- nvim主题配置
  'themes', 
}

-- 加载模块
module.load_modules(modules)