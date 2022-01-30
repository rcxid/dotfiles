#!/bin/lua

local function set_options(options)
    for key, value in pairs(options) do
        vim.o[key] = value
    end
end

local options = {
    number           = true;
    relativenumber   = true;
    autoindent       = true;
	expandtab        = true;
    hidden           = true;
    tabstop          = 4;
	shiftwidth       = 4;
    pumheight        = 10;
    encoding         = "utf-8";
    fileencoding     = "utf-8";
}

set_options(options)
