return {
  {
    -- "navarasu/onedark.nvim",
    -- "Mofiqul/vscode.nvim",
    "xiantang/darcula-dark.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      vim.cmd.colorscheme("darcula-dark")
      vim.cmd.highlight("NonText guifg=bg")
      vim.cmd.highlight("LineNr guifg=#606366 guibg=#313335")
      vim.cmd.highlight("CursorLineNr guifg=#a4a3a3 guibg=#444444")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },
  {
		"utilyre/barbecue.nvim",
    dependencies = {
		  "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    config = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end
  },
  {
    "RRethy/vim-illuminate",
    config = function()
      require("illuminate").configure()
    end
  }
}
