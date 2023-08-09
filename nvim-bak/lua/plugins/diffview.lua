#!/bin/lua

local status_ok, diffview = pcall(require, 'diffview')
if not status_ok then
  vim.notify("diffview not found!")
  return
end

-- local actions = require("diffview.config").actions

diffview.setup {
}
