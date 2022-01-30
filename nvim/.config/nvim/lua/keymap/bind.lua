#!/bin/lua

local split = require('util').split

-- 按键映射配置
local config = {}

-- 创建配置
function config:new()
    local instance = {
        -- nvim模式
        modes = '',
        -- 按键映射
        keymap = '',
        -- 映射命令
        command = '',
        -- 其他参数
        options = {
            noremap = true,
            silent = true,
            expr = false,
            nowait = false,
        }
    }
    setmetatable(instance, self)
    self.__index = self
    return instance
end

-- 设置模式
function config:set_modes(modes)
    self.modes = modes
    return self
end

-- 设置按键映射
function config:set_keymap(keymap)
    self.keymap = keymap
    return self
end

-- 设置映射命令
function config:set_command(command)
    self.command = command
    return self
end

-- 设置参数silent
function config:with_silent()
    self.options.silent = true
    return self
end

-- 设置参数noremap
function config:with_noremap()
    self.options.noremap = true
    return self
end

-- 设置参数expr
function config:with_expr()
    self.options.expr = true
    return self
end

-- 设置参数nowait
function config:with_nowait()
    self.options.nowait = true
    return self
end

-- 按键绑定
bind = {}

-- 解析映射按键绑定
function bind.map_cmd(cmd)
    local parse = split(cmd, '|')
    if #parse == 3 then
        local conf = config:new()
        conf:set_modes(parse[1])
        conf:set_keymap(parse[2])
        conf:set_command(parse[3])
        return conf
    end
end

-- 加载按键映射配置
function bind.load_mapping_config(config)
    if type(config) == 'table' then
        local modes = split(config.modes, ',')
        local keymap = config.keymap
        local command = config.command
        local options = config.options
        for _, mode in pairs(modes) do
            -- print(mode, keymap, command, options)
            vim.api.nvim_set_keymap(mode, keymap, command, options)
        end
    end
end

return bind
