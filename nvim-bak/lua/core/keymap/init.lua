#!/bin/lua

local split = require('core.util.string').split

module = {}

local default_options = {
  noremap = true,
  silent = true,
}

-- 加载按键映射配置
-- configs: { { 'i', 'jj', '<Esc>', { noremap = true, silent = true, ... } }, ... }
function module.setup(configs)
  for _, config in pairs(configs) do
    local modes = split(config[1], ',')
    local keymap = config[2]
    local command = config[3]
    local options = config[4] or default_options
    for _, mode in pairs(modes) do
      -- print(mode, keymap, command, options)
      vim.api.nvim_set_keymap(mode, keymap, command, options)
    end
  end
end

return module
