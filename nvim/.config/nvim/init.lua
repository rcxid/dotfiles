#!/bin/lua

-- 加载nvim基本配置
require('config')
-- 加载nvim插件配置
require('plugins')

-- vim-airline
vim.cmd('source ~/.config/nvim/themes/airline.vim')
-- 设置vim主题
vim.cmd('source ~/.config/nvim/themes/gruvbox-material.vim')