#!/bin/lua

local setting = require('core.setting')

local variables = {
    -- defx插件增加图标的宽度，来解决图标 与文件名重叠的问题
    {'defx_icons_column_length', 2},
}

-- nvim变量设置
setting.set_variables(variables)