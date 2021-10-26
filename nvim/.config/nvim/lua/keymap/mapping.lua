-- 3种模式下禁用上下左右按键
-- inoremap <Up> <Nop>
-- nnoremap <Up> <Nop>
-- vnoremap <Up> <Nop>
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Up>', '<Nop>', { noremap = true, silent = true })
-- inoremap <Down> <Nop>
-- nnoremap <Down> <Nop>
-- vnoremap <Down> <Nop>
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Nop>', { noremap = true, silent = true })
-- inoremap <Left> <Nop>
-- nnoremap <left> <Nop>
-- vnoremap <left> <Nop>
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Nop>', { noremap = true, silent = true })
-- inoremap <Right> <Nop>
-- nnoremap <Right> <Nop>
-- vnoremap <Right> <Nop>
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-q>', '<Esc>:wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', '<Esc>:wq<CR>', { noremap = true, silent = true })
