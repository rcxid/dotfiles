#!/bin/lua

-- inoremap jj <Esc>
-- inoremap jk <Esc>
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-q>', '<Esc>:wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', '<Esc>:wq<CR>', { noremap = true, silent = true })

-- nnoremap <space> viw
vim.api.nvim_set_keymap('n', '<space>', 'viw', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<tab>', ':bNext<CR>', { noremap = true, silent = true })

-- 禁用上下左右按键
-- inoremap <Up> <Nop>
-- nnoremap <Up> <Nop>
-- vnoremap <Up> <Nop>
-- inoremap <Down> <Nop>
-- nnoremap <Down> <Nop>
-- vnoremap <Down> <Nop>
-- inoremap <Left> <Nop>
-- nnoremap <left> <Nop>
-- vnoremap <left> <Nop>
-- inoremap <Right> <Nop>
-- nnoremap <Right> <Nop>
-- vnoremap <Right> <Nop>
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Nop>', { noremap = true, silent = true })


-- 窗口切换
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l


