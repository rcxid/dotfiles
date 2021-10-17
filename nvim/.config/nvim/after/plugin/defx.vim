if !exists('g:loaded_defx') | finish | endif
" Define mappings
"cnoreabbrev sf Defx -listed -new
"      \ -columns=indent:mark:icon:icons:filename:git:size
"      \ -buffer-name=tab`tabpagenr()`<CR>
" nnoremap <silent>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap <silent><C-t> :<C-u>Defx -toggle -listed -resume -auto-cd
    \ -columns=indent:mark:icon:icons:filename:git:size
    \ -buffer-name=tab`tabpagenr()`
    \ -split=vertical -winwidth=30 -direction=topleft
    \ `expand('%:p:h')` -search=`expand('%:p')`<CR>

autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
      " 打开文件
	  nnoremap <silent><buffer><expr> <CR>
	  \ defx#do_action('open')
      " 复制文件
	  nnoremap <silent><buffer><expr> yy
	  \ defx#do_action('copy')
      " 剪切文件
	  nnoremap <silent><buffer><expr> dd
	  \ defx#do_action('move')
      " 粘贴文件
	  nnoremap <silent><buffer><expr> pp
	  \ defx#do_action('paste')
      " 打开文件
	  nnoremap <silent><buffer><expr> l
	  \ defx#do_action('open')
      " 方向左键返回上一级
	  " nnoremap <silent><buffer><expr> <Left>
	  " \ defx#do_action('cd', ['..'])
      " 方向右键打开文件
	  " nnoremap <silent><buffer><expr> <Right>
	  " \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> E
	  \ defx#do_action('open', 'vsplit')
	  nnoremap <silent><buffer><expr> n
	  \ defx#do_action('open', 'pedit')
	  nnoremap <silent><buffer><expr> i
	  \ defx#do_action('open', 'choose')
      " 展开文件夹
	  nnoremap <silent><buffer><expr> o
	  \ defx#do_action('open_or_close_tree')
      " 创建文件夹
	  nnoremap <silent><buffer><expr> K
	  \ defx#do_action('new_directory')
      " 创建文件
	  nnoremap <silent><buffer><expr> N
	  \ defx#do_action('new_file')
	  nnoremap <silent><buffer><expr> M
	  \ defx#do_action('new_multiple_files')
	  nnoremap <silent><buffer><expr> C
	  \ defx#do_action('toggle_columns',
	  \                'mark:indent:icon:filename:type:size:time')
	  nnoremap <silent><buffer><expr> S
	  \ defx#do_action('toggle_sort', 'time')
	  nnoremap <silent><buffer><expr> dD
	  \ defx#do_action('remove')
	  nnoremap <silent><buffer><expr> a
	  \ defx#do_action('rename')
	  nnoremap <silent><buffer><expr> !
	  \ defx#do_action('execute_command')
	  nnoremap <silent><buffer><expr> x
	  \ defx#do_action('execute_system')
	  nnoremap <silent><buffer><expr> YY
	  \ defx#do_action('yank_path')
	  nnoremap <silent><buffer><expr> .
	  \ defx#do_action('toggle_ignored_files')
	  nnoremap <silent><buffer><expr> <BS>
	  \ defx#do_action('toggle_ignored_files')
	  nnoremap <silent><buffer><expr> ;
	  \ defx#do_action('repeat')
	  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> ~
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> gh
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> gn
	  \ defx#do_action('cd',['~/.config/nvim'])
      " 退出
	  nnoremap <silent><buffer><expr> q
	  \ defx#do_action('quit')
      " 选择文件
	  nnoremap <silent><buffer><expr> <Space>
	  \ defx#do_action('toggle_select') . 'j'
      " 选择文件
	  nnoremap <silent><buffer><expr> m
	  \ defx#do_action('toggle_select') . 'j'
	  nnoremap <silent><buffer><expr> vv
	  \ defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> *
	  \ defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> j
	  \ line('.') == line('$') ? 'gg' : 'j'
	  nnoremap <silent><buffer><expr> k
	  \ line('.') == 1 ? 'G' : 'k'
	  nnoremap <silent><buffer><expr> <C-l>
	  \ defx#do_action('redraw')
	  nnoremap <silent><buffer><expr> <C-g>
	  \ defx#do_action('print')
	  nnoremap <silent><buffer><expr> cd
	  \ defx#do_action('change_vim_cwd')
	endfunction

call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ 'root_icon': ' ',
      \ })
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

