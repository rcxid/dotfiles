" 设置空格为leader建
" let g:mapleader =
"\<Space>"
let g:mapleader = ","

" 插入模式中通过按jj、jk回到浏览模式
inoremap jj <Esc>
inoremap jk <Esc>

" block key: 插入模式和浏览模式屏蔽上下左右按键
inoremap <Up> <Nop>
nnoremap <Up> <Nop>
inoremap <Down> <Nop>
nnoremap <Down> <Nop>
inoremap <Left> <Nop>
nnoremap <left> <Nop>
inoremap <Right> <Nop>
nnoremap <Right> <Nop>

" 空格键选中单词
nnoremap <space> viw

"" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")
"
"" Use alt + hjkl to resize windows
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>
"
"" 插入模式下按jj、jk、kj回到浏览模式
"inoremap jj <Esc>
"inoremap jk <Esc>
"inoremap kj <Esc>
"
"" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>
"
"" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
"" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>
"
"" Ctrl + s 保存
"nnoremap <C-s> :w<CR>
"" Ctrl + q 保存退出
"nnoremap <C-Q> :wq!<CR>
"" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
"" Better tabbing
"vnoremap < <gv
"vnoremap > >gv
"
"" Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
"
"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-x> :NERDTreeToggle<CR>
