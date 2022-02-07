" ctrl + t 打开/关闭文件树
" nnoremap <C-t> :NERDTreeToggle<CR>

" tab切换到下个buffer
"nnoremap <C-j> :bnext<CR>

nnoremap <Leader>r :RustRun<CR>
"" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")
"
"" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>
"
"" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>
"
"" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
"" Better tabbing
"vnoremap < <gv
"vnoremap > >gv
"
"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

" Use alt + hjkl to resize windows
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>

