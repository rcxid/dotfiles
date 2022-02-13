#!/bin/lua

local setting = require('core.setting')

local options = {
    number          = true;         -- 设置行号
    relativenumber  = true;         -- 设置相对行号
    autoindent      = true;         -- 开启自动缩进
	expandtab       = true;         -- 空格填充tab
    hidden          = true;
    tabstop         = 4;            -- tab长度
	shiftwidth      = 4;
    pumheight       = 10;
    encoding        = 'utf-8';      -- 字符编码
    fileencoding    = 'utf-8';      -- 写到文件的字符编码
    cursorline      = true;         -- 高亮所在行
    colorcolumn     = '80';         -- 开启右侧参考线
    scrolloff       = 8;            -- jk移动时光标下上方保留8行
    sidescrolloff   = 8;
    splitbelow      = true;
    splitright      = true;
    mouse           = 'a';          -- 启用鼠标
}

local variables = {
    {'mapleader', ' '},
    {'python3_host_prog', '/usr/bin/python3'},
    -- when save buffer will auto exec :RustFmt
    {'rustfmt_autosave', 1},
}

-- nvim选项配置
setting.set_options(options)
-- nvim变量设置
setting.set_variables(variables)