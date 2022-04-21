#!/bin/lua

local module = {}

-- 设置全局选项
-- options: { key = value; ... }
function module.set_options(options)
    for key, value in pairs(options) do
        vim.o[key] = value
    end
end

-- 设置buffer选项
-- options: { key = value; ... }
function module.set_buffer_options(options)
    for key, value in pairs(options) do
        vim.bo[key] = value
    end
end

-- 设置windows选项
-- options: { key = value; ... }
function module.set_window_options(options)
    for key, value in pairs(options) do
        vim.wo[key] = value
    end
end

-- 设置全局变量
-- variables: { { key, value }, ... }
function module.set_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_set_var(key, value)
    end
end

-- 设置buffer变量
-- variables: { { key, value }, ... }
function module.set_buffer_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_buf_set_var(key, value)
    end
end

-- 设置window变量
-- variables: { { key, value }, ... }
function module.set_window_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_win_set_var(key, value)
    end
end

-- 设置选项卡变量
-- variables: { { key, value }, ... }
function module.set_tabpage_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_tabpage_set_var(key, value)
    end
end

-- 设置预定义的 vim 变量
-- variables: { { key, value }, ... }
function module.set_v_variables(variables)
    for _, variable in pairs(variables) do
        local key = variable[1]
        local value = variable[2]
        vim.api.nvim_set_vvar(key, value)
    end
end

return module