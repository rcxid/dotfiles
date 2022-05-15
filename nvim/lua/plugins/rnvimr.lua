#!/bin/lua

local setting = require('core.setting')

local variables = {
    -- 选择文件后隐藏Ranger
    {'rnvimr_enable_picker', 1},
    -- 使用multipane模式启动(单列)可以按~手动切换
    {'rnvimr_ranger_cmd', 'ranger --cmd="set viewmode multipane"'},
}

-- 变量设置
setting.set_variables(variables)
