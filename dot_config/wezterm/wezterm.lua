-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config = {
	-- your configuration goes here
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	font = wezterm.font("SauceCodePro Nerd Font"),
	font_size = 19,
	window_background_opacity = 0.8,
	macos_window_background_blur = 10,
	color_scheme = "Catppuccin Mocha",

	-- 設置 window 邊距
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},

	-- 添加快捷鍵設置
	keys = {
		{
			key = "u",
			mods = "CMD",
			action = wezterm.action_callback(function(window)
				local overrides = window:get_config_overrides() or {}
				if overrides.window_background_opacity == 1.0 then
					-- 如果透明度是 1.0，切換回 0.8
					overrides.window_background_opacity = 0.8
				else
					-- 否則設置為 1.0
					overrides.window_background_opacity = 1.0
				end
				window:set_config_overrides(overrides)
			end),
		},
	},
}

-- and finally, return the configuration to wezterm
return config
