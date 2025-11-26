local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action
config.keys = {
	--[[{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivateTabRelative(-1), -- Previous Tab
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivateTabRelative(1), -- Next Tab
	},
	{
		key = "t",
		mods = "ALT",
		action = act.SpawnTab("CurrentPaneDomain"), -- New Tab
	},
	{
		key = "w",
		mods = "ALT",
		action = act.CloseCurrentTab({ confirm = true }),
	},
	--]]
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
}
config.font = wezterm.font_with_fallback({
	{ family = "Sarasa Mono CL", weight = "Bold" },
	{ family = "Sarasa Mono TC", weight = "Bold" },
	"JetBrains Mono Nerd Font",
	"Zpix",
})

config.colors = {
	foreground = "white",
	background = "#070b1c",
	cursor_bg = "pink",
}

config.font_size = 16.0

config.background = {
	{
		-- 1. Specify the image source file
		source = { File = "/home/suzuran/.config/wezterm/utils/Mad Alice of Pratanallis.jpg" },

		-- 2. Define the scaling mode as "Contain"
		-- "Contain" scales the image as large as possible without cropping or stretching.
		-- This fulfills your "show as much as it can" requirement.
		width = "Cover",
		--		height = "Cover",

		-- 3. Center the image
		horizontal_align = "Center",
		vertical_align = "Middle",

		-- 4. Prevent Tiling
		-- This ensures that if the image is smaller than the window,
		-- it does not repeat but remains centered at its native size.
		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",

		hsb = {
			brightness = 0.08,
			hue = 1.0,
			saturation = 1.0,
		},
		-- Optional: Reduce opacity if the image is too bright
		-- opacity = 0.8,
	},
}

--config.window_background_image = "/home/suzuran/.config/wezterm/utils/Alice of Pratanallis.jpeg"
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

config.initial_cols = 152
config.initial_rows = 31

--config.window_background_opacity = 0.80

return config
