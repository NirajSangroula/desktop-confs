# Save as ~/.config/hypr/scripts/portal.sh
#!/bin/sh
#!/bin/sh
#!/bin/sh
sleep 1

killall xdg-desktop-portal-hyprland 2>/dev/null
killall xdg-desktop-portal 2>/dev/null
sleep 1

/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2

/usr/libexec/xdg-desktop-portal --replace &
