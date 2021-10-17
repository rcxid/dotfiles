" 让Ranger取代Netrw并成为文件浏览器
let g:rnvimr_enable_ex = 1
" 选择文件后隐藏Ranger
let g:rnvimr_enable_picker = 1
" 使用multipane模式启动(单列)可以按~手动切换
let g:rnvimr_ranger_cmd = 'ranger --cmd="set viewmode multipane"'
" 设置<F3> 启动文件管理器
nnoremap <C-r> :RnvimrToggle<CR>
