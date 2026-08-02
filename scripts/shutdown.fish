#!/usr/bin/fish
set -l action (hyprlauncher --options "poweroff,reboot")
switch $action
    case poweroff
        hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
    case reboot
        hyprshutdown -t 'Restarting...' --post-cmd reboot
end
