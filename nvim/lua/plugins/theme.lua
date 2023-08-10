-- 设置onedark主题
local set_onedark_theme = function()
  local onedark = require("onedark")
  onedark.setup {
    style = "warmer"
  }
  onedark.load()
end

return {
  "navarasu/onedark.nvim",
  config = set_onedark_theme
}
