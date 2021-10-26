" 设置leader按键
let g:mapleader = ","

" 插入模式中通过按jj、jk回到浏览模式
inoremap jj <Esc>
inoremap jk <Esc>

" block key: 三种模式中屏蔽上下左右按键
inoremap <Up> <Nop>
nnoremap <Up> <Nop>
vnoremap <Up> <Nop>
inoremap <Down> <Nop>
nnoremap <Down> <Nop>
vnoremap <Down> <Nop>
inoremap <Left> <Nop>
nnoremap <left> <Nop>
vnoremap <left> <Nop>
inoremap <Right> <Nop>
nnoremap <Right> <Nop>
vnoremap <Right> <Nop>

" 空格键选中单词
nnoremap <space> viw

" 窗口切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ctrl + t 打开/关闭文件树
" nnoremap <C-t> :NERDTreeToggle<CR>

" tab切换到下个buffer
"nnoremap <C-j> :bnext<CR>
nnoremap <TAB> :bnext<CR>

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

