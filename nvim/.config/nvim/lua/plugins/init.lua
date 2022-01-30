#!/bin/lua

local prefix = 'plugins.'
local plugins = {
    'packer', 
    'lspconfig', 
    'nvim-cmp', 
    'snippets',
    -- 'rust-analyzer',
}

for _, plugin in pairs(plugins) do
    require(prefix..plugin)
end
