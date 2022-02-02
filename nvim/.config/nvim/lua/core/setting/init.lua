#!/bin/lua

local module = {}

-- 设置nvim选项
-- options: { key = value, ... }
function module.set_options(options)
    for key, value in pairs(options) do
        vim.o[key] = value
    end
end

-- 设置nvim全局变量
-- variables: { { key, value }, ... }
function module.set_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_set_var(key, value)
    end
end

return module