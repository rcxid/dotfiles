#!/bin/lua

local keymap = require('core.keymap')
local setting = require('core.setting')

local variables = {
    -- 选择文件后隐藏Ranger
    {'rnvimr_enable_picker', 1},
    -- 使用multipane模式启动(单列)可以按~手动切换
    {'rnvimr_ranger_cmd', 'ranger --cmd="set viewmode multipane"'},
}

-- 按键映射配置
local mappings = {
    { 'n', '<C-r>', ':RnvimrToggle<CR>' },
}

-- 变量设置
setting.set_variables(variables)
-- 加载按键映射配置
keymap.load_mapping_configs(mappings)
