-- .config/hypr/hyprland.lua
hl.config({
	plugin = {
		scrolloverview = {
			gesture_distance = 300, -- how far is the "max" for the gesture
			scale = 0.5, -- preferred overview scale
			workspace_gap = 100,
			layout = "vertical", -- vertical, horizontal, or auto (per-monitor orientation)
			wallpaper = 0, -- 0: global only, 1: per-workspace only, 2: both
			blur = false, -- blur only the main overview wallpaper

			shadow = {
				enabled = true,
				range = 25,
				color = "#7A51A8",
				--"#9767F0",
			},
		},
	},
})

-- Toggle ScrollOverview with SUPER+TAB
hl.bind("SUPER + TAB", function()
	hl.plugin.scrolloverview.overview("toggle all")
end)
