local theme = 'sonokai'

vim.cmd[[
if has('termguicolors')
  set termguicolors
endif
let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1
]]

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. theme)

if not status_ok then
  vim.notify('colorscheme: ' .. theme .. ' not found!')
end
