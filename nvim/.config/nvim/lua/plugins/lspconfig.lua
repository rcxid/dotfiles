#!/bin/lua

local lsp = require('lspconfig')

-- 提示信息自定义图标 icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

local servers = {
    'pyright',
    -- 'rust_analyzer',
}

for _, server in pairs(servers) do
    lsp[server].setup{}
end