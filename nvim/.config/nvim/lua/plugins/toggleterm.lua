#!/bin/lua

local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
  vim.notify("toggleterm not found!")
  return
end

toggleterm.setup {
}
