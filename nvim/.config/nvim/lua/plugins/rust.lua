#!/bin/lua

require('lspconfig').rust_analyzer.setup({
})

require('core.keymap').load_mapping_configs({
  { 'n', '<Leader>r', ':RustRun<CR>' },
})
