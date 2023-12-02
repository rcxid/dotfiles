local wezterm = require("wezterm")

-- local font_config = { weight = "Regular", italic = false }
local config = {
  font_size = 19,
  font = wezterm.font("CaskaydiaCove Nerd Font Mono"),
  term = "xterm-256color",
  -- color_scheme = "Gruvbox dark, hard (base16)",
  initial_cols = 125,
  initial_rows = 34,
  window_decorations = "INTEGRATED_BUTTONS|RESIZE",
}

return config
