#!/bin/lua

local setting = require('core.setting')

local variables = {
    -- window选择器if you want to use overlay feature
    {'choosewin_overlay_enable', 1},
}

-- nvim变量设置
setting.set_variables(variables)