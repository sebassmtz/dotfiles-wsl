-- https://wezfurlong.org/wezterm/config/lua/config/index.html

-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on("augment-command-palette", function(window, pane)
	return {
		{
			brief = "Rename tab",
			icon = "md_rename_box",

			action = act.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},
	}
end)

if wezterm.config_builder then
  config = wezterm.config_builder()
end

--colors settings
config.force_reverse_video_cursor = true
config.colors = {}
config.colors.foreground = "#dcd7ba"
config.colors.background = "#181616"
config.colors.cursor_bg = "#c8c093"
config.colors.cursor_fg = "#c8c093"
config.colors.cursor_border = "#c8c093"
config.colors.selection_fg = "#c8c093"
config.colors.selection_bg = "#2d4f67"
config.colors.scrollbar_thumb = "#16161d"
config.colors.split = "#16161d"
config.colors.ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" }
config.colors.brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" }
config.colors.indexed = { [16] = "#ffa066", [17] = "#ff5d62" }

config.use_resize_increments = false
	-- Tab_bar
config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.tab_max_width = 50
config.tab_bar_at_bottom = false
--  change
config.check_for_updates = true
config.unicode_version = 14
config.font_size = 15.0
config.cell_width = 1.0
config.line_height = 1.0
config.window_background_opacity = 0.85
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font 'IosevkaTerm NFM'
config.term = "wezterm"
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	left = 5,
	right = 5,
	top = 0,
	bottom = 0,
}

-- activate ONLY if windows --

config.default_domain = 'WSL:Ubuntu'
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.max_fps = 120
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
	if gpu.backend == "Vulkan" then
		config.webgpu_preferred_adapter = gpu
		break
	end
end


-- and finally, return the configuration to wezterm
return config