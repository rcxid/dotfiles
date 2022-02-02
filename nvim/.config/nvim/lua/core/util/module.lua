#!/bin/lua

local mod = {}

-- 加载模块
-- modules: { 'module', ... }
function mod.load_modules(modules)
    for _, module in ipairs(modules) do
        local ok, err = pcall(require, module)
        if not ok then
            error("Error loading " .. module .. "\n\n" .. err)
        end
    end
end

return mod