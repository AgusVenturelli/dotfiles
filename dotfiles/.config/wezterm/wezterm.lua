local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

local IS_TRANSPARENT = false

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13
config.color_scheme = "Catppuccin Mocha"

config.window_close_confirmation = "AlwaysPrompt"
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- config.enable_tab_bar = false
config.tab_bar_at_bottom = true
-- config.use_fancy_tab_bar = false
config.native_macos_fullscreen_mode = true
config.max_fps = 120

config.window_padding = {
	left = "2cell",
	right = "2cell",
	top = "1cell",
	bottom = "1cell",
}

config.leader = { key = " ", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- {
	-- 	key = "|",
	-- 	mods = "LEADER",
	-- 	action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	-- },
	-- {
	-- 	key = "-",
	-- 	mods = "LEADER",
	-- 	action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	-- },
	-- {
	-- 	key = "LeftArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Left"),
	-- },
	-- {
	-- 	key = "RightArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Right"),
	-- },
	-- {
	-- 	key = "UpArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Up"),
	-- },
	-- {
	-- 	key = "DownArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Down"),
	-- },
	-- {
	-- 	key = "LeftArrow",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	-- },
	-- {
	-- 	key = "RightArrow",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	-- },
	-- {
	-- 	key = "UpArrow",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	-- },
	-- {
	-- 	key = "DownArrow",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	-- },
}

if IS_TRANSPARENT then
	config.window_background_opacity = 0.90
	config.macos_window_background_blur = 20
end

return config
