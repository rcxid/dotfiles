local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 19
config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.term = "xterm-256color"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.window_decorations = "RESIZE"

-- config.initial_cols = 173
-- config.initial_rows = 42
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 70
-- config.text_background_opacity = 0.9

config.colors = {
  -- 终端背景颜色
  background = "#1e2229",
  -- 选择背景色
  selection_bg = "#186c60",
  tab_bar = {
    background = "#1e2229",
    active_tab = {
      bg_color = "#1abc9c",
      fg_color = "#1e2229",
      intensity = "Bold",
      underline = 'None',
      italic = false,
      strikethrough = false,
    },
--     inactive_tab = {
--       bg_color = '#1b1032',
--       fg_color = '#808080',
--     },

--     inactive_tab_hover = {
--       bg_color = '#3b3052',
--       fg_color = '#909090',
--       italic = false,
--     },
    new_tab = {
      bg_color = "#1e2229",
      fg_color = '#808080',
    },
  },
}

config.window_padding = {
  left = 20,
  right = 20,
  top = 10,
  bottom = 0,
}

return config

