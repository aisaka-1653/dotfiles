local wezterm = require("wezterm")

-- 背景画像のパスを設定
local background_image = "/Users/aisaka/.config/wezterm/character.PNG"

local gradient_layer = {
	source = {
		Gradient = {
			colors = { "#124354", "#001522" },
			orientation = {
				Linear = {
					angle = -30.0,
				},
			},
		},
	},
	opacity = 1.0,
	width = "100%",
	height = "100%",
}

local image_layer = {
	source = { File = background_image },
	opacity = 0.12,
	vertical_align = "Middle",
	horizontal_align = "Right",
	horizontal_offset = "200px",
	repeat_x = "NoRepeat",
	repeat_y = "NoRepeat",
	width = "1431px",
	height = "1900px",
}

local default_bg = {
	gradient_layer,
	image_layer,
}

local neovim_bg = {
	gradient_layer,
}

local prev_process_name
local prev_background

wezterm.on("update-status", function(window, pane)
	local process_name = pane:get_foreground_process_name()

	if process_name == prev_process_name then
		return
	end

	local new_background = process_name:find("nvim") and neovim_bg or nil

	if new_background ~= prev_background then
		window:set_config_overrides({ background = new_background })
		prev_background = new_background
	end

	prev_process_name = process_name
end)

return default_bg
