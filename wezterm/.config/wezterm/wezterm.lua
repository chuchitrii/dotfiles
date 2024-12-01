local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 16
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

require("keys")(config)

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
	position = "top",
	modules = {
		hostname = {
			enabled = false,
		},
		clock = {
			enabled = false,
		},
		cwd = {
			enabled = false,
		},
	},
})

wezterm.on("gui-startup", function(cmd)
	local active_screen = wezterm.gui.screens()["active"]
	local _, _, window = wezterm.mux.spawn_window(cmd or {})

	window:gui_window():set_position(0, 0)
	window:gui_window():set_inner_size(active_screen.width, active_screen.height)
end)

return config
