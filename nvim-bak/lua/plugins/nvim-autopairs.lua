#!/bin/lua

local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  vim.notify("nvim-autopairs not found!")
  return
end

autopairs.setup {}
