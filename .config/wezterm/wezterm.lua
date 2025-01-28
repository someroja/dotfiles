local wezterm = require "wezterm"

local config = wezterm.config_builder()
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.font_size = 16.0
config.quit_when_all_windows_are_closed = false

return config
