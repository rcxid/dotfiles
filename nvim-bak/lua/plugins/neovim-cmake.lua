#!/bin/lua

local status_ok, cmake = pcall(require, 'cmake')
if not status_ok then
  vim.notify('neovim-cmake not found!')
  return
end

local Path = require('plenary.path')

cmake.setup {
}
