#!/bin/lua

local keymap = require('core.keymap')
local setting = require('core.setting')

local variables = {
    -- 让Ranger取代Netrw并成为文件浏览器
    {'rnvimr_enable_ex', 1},
    -- 选择文件后隐藏Ranger
    {'rnvimr_enable_picker', 1},
    -- 使用multipane模式启动(单列)可以按~手动切换
    {'rnvimr_ranger_cmd', 'ranger --cmd="set viewmode multipane"'},
}

local options = {
    noremap = true,
    silent = true,
    expr = false,
    nowait = false,
}

-- 按键映射配置
local mappings = {
    { 'n', '<C-r>', ':RnvimrToggle<CR>', options },
}

-- 变量设置
setting.set_variables(variables)
-- 加载按键映射配置
keymap.load_mapping_configs(mappings)