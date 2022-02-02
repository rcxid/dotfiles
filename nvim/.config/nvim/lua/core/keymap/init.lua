#!/bin/lua

local split = require('core.util.string').split

module = {}

-- 加载按键映射配置
-- configs: { { 'i', 'jj', '<Esc>', { noremap = true, silent = true, ... } }, ... }
function module.load_mapping_configs(configs)
    for _, config in pairs(configs) do
        local modes = split(config[1], ',')
        local keymap = config[2]
        local command = config[3]
        local options = config[4]
        for _, mode in pairs(modes) do
            -- print(mode, keymap, command, options)
            vim.api.nvim_set_keymap(mode, keymap, command, options)
        end
    end
end

return module