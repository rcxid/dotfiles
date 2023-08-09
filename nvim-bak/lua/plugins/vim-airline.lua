#!/bin/lua

local setting = require('core.setting')

local variables = {
    {'airline#extensions#tabline#enabled', 1},
    {'airline#extensions#tabline#buffer_idx_mode', 1},
    {'airline_powerline_fonts', 1},
}

setting.set_variables(variables)

-- let g:airline_left_sep = ''
-- let g:airline_right_sep = ''
-- let g:airline#extensions#tabline#left_sep = ''
-- let g:airline#extensions#tabline#left_alt_sep = ''
-- let g:airline#extensions#tabline#right_sep = ''
-- let g:airline#extensions#tabline#right_alt_sep = ''

-- Switch to your current theme
-- let g:airline_theme = 'onedark'

-- Always show tabs
-- set showtabline=2

-- We don't need to see things like -- INSERT -- anymore
-- set noshowmode
