#!/bin/lua

require('setting.variable')

local function set_options(options)
    for key, value in pairs(options) do
        vim.o[key] = value
    end
end

local options = {
    -- 设置行号
    number           = true;
    -- 设置相对行号
    relativenumber   = true;
    -- 开启自动缩进
    autoindent       = true;
    -- 空格填充tab
	expandtab        = true;
    hidden           = true;
    -- tab长度
    tabstop          = 4;
	shiftwidth       = 4;
    pumheight        = 10;
    -- 字符编码
    encoding         = "utf-8";
    -- 写到文件的字符编码
    fileencoding     = "utf-8";
}

set_options(options)
