#!/bin/lua

-- string工具类方法
local module = {}

-- 自定义split函数，切分字符串
-- str: 要切分的字符串
-- char: 按照那个字符切分
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

return module
