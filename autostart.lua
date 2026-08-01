local config_path = "~/.config/hypr/"

hl.on("hyprland.start", function()
	hl.exec_cmd("fcitx5 -d")
	hl.exec_cmd("hyprlauncher -d")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("kitty -c " .. config_path .. "kitty/kitty.conf")
	hl.exec_cmd("mako -c " .. config_path .. "mako/config")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd(
		"env LC_ALL=en_US.UTF-8 "
			.. "waybar -c "
			.. config_path
			.. "waybar/config.jsonc"
			.. " -s "
			.. config_path
			.. "waybar/style.css"
	)
end)
