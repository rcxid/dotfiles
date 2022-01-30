#!/bin/lua

-- 引入设置配置
require('setting')
-- 引入按键映射配置
require('keymap')
-- 引入插件配置
require('plugins')
-- vim-airline

vim.cmd('source ~/.config/nvim/themes/airline.vim')
-- 设置vim主题
vim.cmd('source ~/.config/nvim/themes/gruvbox-material.vim')
-- 引入插件配置
vim.cmd('source ~/.config/nvim/after/plugin/defx-icons.vim')
