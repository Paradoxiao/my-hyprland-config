-- local main_mod = "SUPER"
local main_mod_and = "SUPER + "
local config_path = "~/.config/hypr/"
local teminal = "kitty -c " .. config_path .. "kitty/kitty.conf"
local file_manager = "dolphin"
local menu = "hyprlauncher"

local bind = hl.bind
local exec_cmd = hl.dsp.exec_cmd

bind(main_mod_and .. "E", exec_cmd(file_manager))
bind(main_mod_and .. "F", hl.dsp.window.float({ action = "toggle" }))
bind(main_mod_and .. "J", exec_cmd("firefox"))
bind(main_mod_and .. "K", exec_cmd("neovide"))
bind(main_mod_and .. "L", exec_cmd("hyprlock"))
bind(main_mod_and .. "N", exec_cmd("mihomo-party"))
bind(main_mod_and .. "G", hl.dsp.layout("togglesplit"))
bind(main_mod_and .. "P", hl.dsp.window.pseudo({ action = "toggle" }))
bind(main_mod_and .. "Q", hl.dsp.window.close())
bind(main_mod_and .. "R", exec_cmd(menu))
bind(main_mod_and .. "SHIFT + S", exec_cmd("hyprshot --mode region"))
bind(main_mod_and .. "S", exec_cmd("hyprshot --mode window"))
bind(main_mod_and .. "U", exec_cmd("hyprpicker --autocopy"))
bind(main_mod_and .. "V", exec_cmd("cliphist list | hyprlauncher --dmenu | cliphist decode | wl-copy"))
bind(main_mod_and .. "Escape", exec_cmd(teminal .. " btop"))
bind(main_mod_and .. "Return", exec_cmd(teminal))
bind(main_mod_and .. "KP_Enter", exec_cmd(teminal))
bind(main_mod_and .. "Left", hl.dsp.focus({ direction = "left" }))
bind(main_mod_and .. "Right", hl.dsp.focus({ direction = "right" }))
bind(main_mod_and .. "Up", hl.dsp.focus({ direction = "up" }))
bind(main_mod_and .. "Down", hl.dsp.focus({ direction = "down" }))
bind(main_mod_and .. "F11", hl.dsp.window.fullscreen({ action = "toggle" }))
bind(main_mod_and .. "CTRL + Left", hl.dsp.focus({ workspace = "e-1" }))
bind(main_mod_and .. "CTRL + Right", hl.dsp.focus({ workspace = "e+1" }))
bind("mouse:275", hl.dsp.focus({ direction = "right" }))
bind("mouse:276", hl.dsp.focus({ direction = "left" }))
bind(main_mod_and .. "mouse:275", hl.dsp.focus({ workspace = "e+1" }))
bind(main_mod_and .. "mouse:276", hl.dsp.focus({ workspace = "e-1" }))
bind(main_mod_and .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
bind(main_mod_and .. "mouse:273", hl.dsp.window.resize(), { mouse = true })
bind(main_mod_and .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
bind(main_mod_and .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))
bind(main_mod_and .. "SHIFT + mouse_down", hl.dsp.window.move({ workspace = "e+1" }))
bind(main_mod_and .. "SHIFT + mouse_up", hl.dsp.window.move({ workspace = "e-1" }))
bind(
	main_mod_and .. "M",
	exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

for i = 0, 9 do
	bind(main_mod_and .. i, hl.dsp.focus({ workspace = i }))
	bind(main_mod_and .. "SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

bind(
	"XF86AudioRaiseVolume",
	exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
bind("XF86AudioLowerVolume", exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
bind("XF86AudioMute", exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
bind("XF86AudioMicMute", exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
bind("XF86MonBrightnessUp", exec_cmd("brightnessctl set 5+"), { locked = true, repeating = true })
bind("XF86MonBrightnessDown", exec_cmd("brightnessctl set 5-"), { locked = true, repeating = true })

-- Requires playerctl
bind("XF86AudioNext", exec_cmd("playerctl next"), { locked = true })
bind("XF86AudioPause", exec_cmd("playerctl play-pause"), { locked = true })
bind("XF86AudioPlay", exec_cmd("playerctl play-pause"), { locked = true })
bind("XF86AudioPrev", exec_cmd("playerctl previous"), { locked = true })
