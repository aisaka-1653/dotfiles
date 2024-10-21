local wezterm = require("wezterm")
local keybind = require("keybinds")
local background = require("background")
require("format")
require("status")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.macos_window_background_blur = 20
config.font = wezterm.font("Firge35Nerd Console")
config.font_size = 16.0
config.window_frame = {
	font = wezterm.font("Roboto"),
	font_size = 13.0,
}
config.disable_default_key_bindings = true
config.keys = keybind.keys
config.key_tables = keybind.key_tables
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
config.status_update_interval = 100
config.background = background

return config
