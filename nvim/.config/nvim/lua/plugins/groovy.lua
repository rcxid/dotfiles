#!/bin/lua

require('lspconfig').groovyls.setup({
  cmd = { "java", "-jar", "~/code/java/groovy-language-server/build/libs/groovy-language-server-all.jar" }
})

nvim_tree.setup {
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
    "startup",
  },
  -- auto_close = true,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit" },
        { key = "h", action ="close_node" },
        { key = "v", action ="vsplit" },
        { key = "O", action ="cd" },
      },
    },
    number = false,
    relativenumber = false,
  },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  -- root_folder_modifier = ":t",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
  actions = {
    open_file = {
        resize_window = true    -- close half-screen usage when open a new file
    }
  }
}

-- with relative path
require"nvim-tree.events".on_file_created(function(file) vim.cmd("edit "..file.fname) end)
-- with absolute path
-- require"nvim-tree.events".on_file_created(function(file) vim.cmd("edit "..vim.fn.fnamemodify(file.fname, ":p")) end)
