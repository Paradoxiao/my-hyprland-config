#!/usr/bin/fish
if test (cat /sys/class/power_supply/BAT0/status) = Discharging
    sed -i '32c\monitor=,2560x1600@60,auto,1.25' ~/.config/hypr/hyprland.conf
    brightnessctl s 0
else
    sed -i '32c\monitor=,2560x1600@165,auto,1.25' ~/.config/hypr/hyprland.conf
    brightnessctl s 100
end
return 0
