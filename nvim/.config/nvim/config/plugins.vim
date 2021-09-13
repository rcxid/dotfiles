" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.config/nvim/plugged')
call plug#begin('~/.local/share/nvim/plugged')

" vim首页
Plug 'mhinz/vim-startify'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim Theme
Plug 'w0ng/vim-hybrid'
" 文件树插件
Plug 'preservim/nerdtree'
" 文件查找插件
Plug 'ctrlpvim/ctrlp.vim'

" nerdtree图标
" Plug 'ryanoasis/vim-devicons'

" rust语言支持
Plug 'rust-lang/rust.vim'
Plug 'mattn/webapi-vim'

" go语言插件
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'voldikss/vim-translator'

" 括号匹配
Plug 'jiangmiao/auto-pairs'

" 替换删除单词周围的字符
Plug 'tpope/vim-surround'

" 模糊搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 批量替换
Plug 'brooth/far.vim'

" Initialize plugin system
call plug#end()

