local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 33
config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "NONE"
config.default_cursor_style = "BlinkingBar"

config.color_scheme = "Dracula"

config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {
  weight = "DemiBold",
})
config.font_size = 15

config.window_background_opacity = 0.95

config.window_padding = {
  left = 3,
  right = 3,
  top = 0,
  bottom = 0,
}

return config
