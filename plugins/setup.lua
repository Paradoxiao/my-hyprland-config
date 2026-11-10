hl.permission({ binary = "/bin/hyprpm", type = "plugin", mode = "allow" })
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpm reload")
end)

require("plugins.scrolloverview")
-- require("plugins.hyprspace")
-- require("plugins.hyprbars")
