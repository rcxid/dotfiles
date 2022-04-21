#!/bin/lua

local setting = require('core.setting')

local variables = {
    {'airline#extensions#tabline#enabled', 1},
    {'airline#extensions#tabline#buffer_idx_mode', 1},
    {'airline_powerline_fonts', 1},
}

setting.set_variables(variables)

-- nmap <leader>1 <Plug>AirlineSelectTab1
-- nmap <leader>2 <Plug>AirlineSelectTab2
-- nmap <leader>3 <Plug>AirlineSelectTab3
-- nmap <leader>4 <Plug>AirlineSelectTab4
-- nmap <leader>5 <Plug>AirlineSelectTab5
-- nmap <leader>6 <Plug>AirlineSelectTab6
-- nmap <leader>7 <Plug>AirlineSelectTab7
-- nmap <leader>8 <Plug>AirlineSelectTab8
-- nmap <leader>9 <Plug>AirlineSelectTab9

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
