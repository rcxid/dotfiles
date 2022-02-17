#!/bin/lua

local nvim_lsp = require('lspconfig')

-- local on_attach = function(client)
--   require('completion').on_attach(client)
-- end

nvim_lsp.rust_analyzer.setup({
  -- on_attach = on_attach,
  -- cmd = { "rust-analyzer" },
  -- filetypes = { "rust" },
  -- root_dir = root_pattern("Cargo.toml", "rust-project.json"),
  -- settings = {
  --   ["rust-analyzer"] = {
  --     assist = {
  --       importGranularity = "module",
  --       importPrefix = "by_self",
  --    },
  --     cargo = {
  --       loadOutDirsFromCheck = true
  --     },
  --     procMacro = {
  --       enable = true
  --     },
  --   }
  -- }
})
