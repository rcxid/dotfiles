#!/bin/lua

require('core.keymap').load_mapping_configs({
  { 'n', '<A-b>', ':TagbarToggle<CR>' },
})