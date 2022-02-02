#!/bin/lua

-- 封装一些通用方法
local module = {}

-- 自定义split函数，切分字符串
function module.split(str, char)
    local index = 1
    local result = {}
    local new_str = str..char
    for item in string.gmatch(new_str, "(.-)"..char) do
        result[index] = item
        index = index + 1
    end
    return result
end

-- 加载模块
function module.load_module(modules)
    for _, module in pairs(modules) do
        require(module)
    end
end

return module
