#!/bin/sh

# Enter directory of this script
cd $(dirname "$0")

# Directory containing the wallpapers. Modify if needed.
WP_DIR="./images/"

# Select a random jpg file
FILE=$(ls $WP_DIR/*.jpg | shuf -n 1)

# Check for Popular Desktop Environments that include built-in methods
DE="$XDG_CURRENT_DESKTOP"
# Gnome
if [ "$DE" == "GNOME" ]; then
    gsettings set org.gnome.desktop.background picture-uri "'file://$(readlink -f "$FILE")'"
    gsettings set org.gnome.desktop.background picture-uri-dark "'file://$(readlink -f "$FILE")'"
    exit 0
fi

# Check if running X11 or Wayland.
if [[ -z "$WAYLAND_DISPLAY" && -z "$XDG_SESSION_TYPE" ]]; then
    # X11
    # -------------------------------------------------------------------
    # Feh
    if command -v feh >/dev/null 2>&1; then
        feh --bg-fill "$FILE"
    # Nitrogen
    elif command -v nitrogen >/dev/null 2>&1; then
        nitrogen --set-zoom-fill "$FILE"
    else
        echo "No suitable wallpaper setting utility found. Please install one of the above utilities, or use your desktop environment's native method if possible."
    fi
else
    # Wayland
    # -------------------------------------------------------------------
    # swaybg
    if command -v swaybg >/dev/null 2>&1; then
        nohup swaybg -m fill -i "$FILE" &
    # swww
    elif command -v swww >/dev/null 2>&1; then
        $(pgrep swww-daemon &> /dev/null || nohup swww-daemon > /dev/null ) & swww img "$FILE"
    else
        echo "No suitable wallpaper setting utility found. Please install one of the above utilities, or use your desktop environment's native method if possible."
    fi
fi

# Delete "nohup.out" file when done.
rm -rf ./nohup.out