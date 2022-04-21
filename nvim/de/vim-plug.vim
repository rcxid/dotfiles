" 图标
Plug 'ryanoasis/vim-devicons'

" vim Theme
Plug 'sainnhe/gruvbox-material'
Plug 'w0ng/vim-hybrid'

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Plug 'kristijanhusak/defx-icons'
" Plug 't9md/vim-choosewin'

" 文件查找插件
Plug 'ctrlpvim/ctrlp.vim'

" rust语言支持
" Plug 'rust-lang/rust.vim'
Plug 'mattn/webapi-vim'

" go语言插件
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

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