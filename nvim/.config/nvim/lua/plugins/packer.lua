#!/bin/lua

-- auto install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- install plugin
local function plugins()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- vim startify
  use 'mhinz/vim-startify'
  -- vim theme
  use 'sainnhe/gruvbox-material'
  use 'navarasu/onedark.nvim'
  use 'martinsione/darkplus.nvim'
  -- vim-airline
  -- use {
  --   'vim-airline/vim-airline',
  --   requires = {
  --     'vim-airline/vim-airline-themes',
  --     -- 综合图标支持such vim-airline lightline, vim-startify
  --     -- 'ryanoasis/vim-devicons'
  --   }
  -- }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'SmiteshP/nvim-gps' -- statusline show class structure
  -- using packer.nvim
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- 图标支持such vim-airline lightline, vim-startify
  use 'ryanoasis/vim-devicons'
  -- ranger
  use 'kevinhwang91/rnvimr'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require('nvim-tree').setup {} end
  }
  -- markdown
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
  -- 括号自动匹配
  use 'jiangmiao/auto-pairs'
  -- lsp
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      --nvim-cmp source for neovim Lua API.
      'hrsh7th/cmp-nvim-lua',
      --自动提示硬盘上的文件
      'hrsh7th/cmp-path',
      --输入数学算式（如1+1=）自动计算
      'hrsh7th/cmp-calc',
      --输入: 可以显示表情
      'hrsh7th/cmp-emoji',
      --美化自动完成提示信息
      'onsails/lspkind-nvim',
      --用于完成英语单词
      'octaltree/cmp-look',
      --nvim-cmp 的拼写源基于 vim 的拼写建议
      'f3fora/cmp-spell'
    }
  }
  -- java
  use 'mfussenegger/nvim-jdtls'
  -- java debug
  use 'mfussenegger/nvim-dap'
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap'
    }
  }
  -- 代码段提示
  use {
    'L3MON4D3/LuaSnip',
    requires = {
      -- Snippets source for nvim-cmp
      'saadparwaiz1/cmp_luasnip',
      --代码段合集
      'rafamadriz/friendly-snippets'
    }
  }

  -- rust
  use {
    'simrat39/rust-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'mfussenegger/nvim-dap'
    }
  }

  use 'voldikss/vim-floaterm'

  -- tagbar
  use 'preservim/tagbar'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  -- :TSUpdate
  use {'nvim-treesitter/nvim-treesitter' }

  use 'airblade/vim-gitgutter'

  use 'thinca/vim-quickrun'
end

-- packer.vim配置
local config = {
  max_jobs = 16,
  git = {
    default_url_format = 'https://github.com/%s'
  },
  display = {
    open_fn = function()
        return require('packer.util').float({ border = 'single' })
    end
  }
}

return require('packer').startup({
  plugins,
	config = config
})
