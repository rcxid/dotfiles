#!/bin/bash

-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = '/home/vision/code/java/' .. project_name

local config = {
  cmd = {
    '-data', workspace_dir,
  }
}