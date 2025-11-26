local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.keys = {
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
}
-- You need to have the fonts in your system...
-- .local/share/fonts for linux
-- ttf files in utils
-- fc-cache -fv to clean up your font fc-cache
config.font = wezterm.font_with_fallback({
	{ family = "Sarasa Mono CL", weight = "Bold" },
	{ family = "Sarasa Mono TC", weight = "Bold" },
	"JetBrains Mono Nerd Font",
})

config.colors = {
	foreground = "white",
	cursor_bg = "pink",
}

config.font_size = 16.0

config.background = {
	{
		source = { File = "/home/suzuran/.config/wezterm/utils/Mad Alice of Pratanallis.jpg" },
		-- "/home/suzuran/.config/wezterm/utils/Alice of Pratanallis.jpeg"
		width = "Cover",
		horizontal_align = "Center",
		vertical_align = "Middle",

		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",

		hsb = {
			brightness = 0.08,
			hue = 1.0,
			saturation = 1.0,
		},
	},
}

config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

config.initial_cols = 152
config.initial_rows = 31

return config
