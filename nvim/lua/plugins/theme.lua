-- 设置onedark主题
local set_onedark_theme = function()
  local onedark = require("onedark")
  onedark.setup {
    style = "warmer"
  }
  onedark.load()
end

-- 设置vscode dark主题
local set_vscode_dark_theme = function()
  require("vscode").load("dark")
end

return {
  "navarasu/onedark.nvim",
  dependencies = {
    "Mofiqul/vscode.nvim",
  },
  -- vim.cmd[[colorscheme habamax]]
  config = set_onedark_theme
}
