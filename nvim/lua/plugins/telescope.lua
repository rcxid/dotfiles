-- This is your opts table
require("telescope").setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

local options = {
  noremap = true,
  silent = true,
}

-- 按键映射配置
local mappings = {
  { 'n',  '<space>ff',    "<cmd>Telescope find_files<cr>", options },
  { 'n',  '<space>fg',    "<cmd>Telescope live_grep<cr>",  options },
  { 'n',  '<space>fb',    "<cmd>Telescope buffers<cr>",    options },
  { 'n',  '<space>fh',    "<cmd>Telescope help_tags<cr>",  options },
}

-- 加载按键映射配置
require('core.keymap').load_mapping_configs(mappings)
