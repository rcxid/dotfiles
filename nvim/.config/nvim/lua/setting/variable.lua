#!/bin/lua

-- 设置全局变量
local function set_var(vars)
    for _, var in pairs(vars) do
        local key = var[1]
        local value = var[2]
        vim.api.nvim_set_var(key, value)
    end
end

local vars = {
    {'python3_host_prog', '/usr/bin/python3'},
    -- when save buffer will auto exec :RustFmt
    {'rustfmt_autosave', 1},
    -- 增加图标的宽度，来解决图标 与文件名重叠的问题
    {'defx_icons_column_length', 2},
}

set_var(vars)
