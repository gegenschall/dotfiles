local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.term = "wezterm"
config.color_scheme = "Tokyo Night Moon"

config.font = wezterm.font("IosevkaTerm Nerd Font")
config.font_size = 14
config.underline_position = -3

config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 64,
	bottom = 0,
}

config.native_macos_fullscreen_mode = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE|MACOS_FORCE_DISABLE_SHADOW"
config.window_close_confirmation = "NeverPrompt"

config.audible_bell = "Disabled"

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}
return config
