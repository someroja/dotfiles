local wezterm = require "wezterm"

local config = wezterm.config_builder()
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.color_scheme = "nordfox"
config.font_size = 16.0

return config
