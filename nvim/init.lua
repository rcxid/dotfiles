#!/bin/lua

vim.cmd[[
set guifont=DejaVuSansMono\ Nerd\ Font:h16
]]

require('core.util.module').setup {
  -- nvim基本配置
  'config',
  -- nvim插件配置
  'plugins',
  -- nvim主题配置
  'themes',
}
