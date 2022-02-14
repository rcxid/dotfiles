#!/bin/lua

local theme = 'gruvbox-material'

vim.cmd([[
set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
]])

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. theme)

if not status_ok then
    vim.notify('colorscheme: ' .. theme .. ' not found!')
end
