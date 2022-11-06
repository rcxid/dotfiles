#!/bin/lua

-- check and auto install packer
local function check_packer()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = check_packer()

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  vim.notify('packer not found!')
  return
end

-- install plugin
local function plugins(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'rcarriga/nvim-notify'
  use 'numToStr/Comment.nvim'
  use 'windwp/nvim-spectre'
  use 'ethanholz/nvim-lastplace'
  -- vim首页
  use {
    'goolord/alpha-nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }
  -- vim theme
  use 'sainnhe/gruvbox-material'
  use 'navarasu/onedark.nvim'
  use 'martinsione/darkplus.nvim'
  use 'projekt0n/github-nvim-theme'
  use 'sainnhe/sonokai'
  -- use 'w0ng/vim-hybrid'
  -- vim状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  -- statusline show class structure
  use 'SmiteshP/nvim-gps'
  -- nvim buffer line
  use {
    'akinsho/bufferline.nvim',
    tag = '*',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }
  -- 图标支持such vim-airline lightline, vim-startify
  use 'ryanoasis/vim-devicons'
  -- ranger
  use 'kevinhwang91/rnvimr'
  -- nvim file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }
  -- markdown
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install'
  }
  -- 括号自动匹配
  use 'windwp/nvim-autopairs'
  -- lsp
  use 'neovim/nvim-lspconfig'
  -- use 'williamboman/nvim-lsp-installer'
  use 'williamboman/mason.nvim'
  -- cmp
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      --美化自动完成提示信息
      'onsails/lspkind-nvim',
      --用于完成英语单词
      'octaltree/cmp-look',
      'f3fora/cmp-spell',
      -- snip
      -- 'L3MON4D3/LuaSnip',
      -- 'saadparwaiz1/cmp_luasnip',
      -- 'rafamadriz/friendly-snippets'
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
  -- java
  use 'mfussenegger/nvim-jdtls'
  -- debug
  use 'mfussenegger/nvim-dap'
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap'
    }
  }
  use 'theHamsta/nvim-dap-virtual-text'
  -- rust
  use {
    'simrat39/rust-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'mfussenegger/nvim-dap'
    }
  }
  use {
    'saecki/crates.nvim',
    tag = 'v0.2.1',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  }

  use 'Shatur/neovim-cmake'

  -- use 'voldikss/vim-floaterm'
  use 'akinsho/toggleterm.nvim'
  use 'kdheepak/lazygit.nvim'

  -- tagbar
  use 'preservim/tagbar'
  use 'simrat39/symbols-outline.nvim'
  use 'stevearc/aerial.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  -- 增强代码高亮 :TSUpdate
  use {'nvim-treesitter/nvim-treesitter' }

  -- nvim git插件
  use 'lewis6991/gitsigns.nvim'
  use {
    'sindrets/diffview.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use 'thinca/vim-quickrun'
  -- use 'Pocco81/auto-save.nvim'
  use 'nullishamy/autosave.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }
  use 'folke/todo-comments.nvim'
  use 'ahmedkhalf/project.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/which-key.nvim'
  use 'Shatur/neovim-session-manager'
  use 'LintaoAmons/scratch.nvim'

  if packer_bootstrap then
    packer.sync()
  end
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

return packer.startup {
  plugins,
  config = config
}
