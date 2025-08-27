#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpaper"

# pakai rofi dengan preview gambar
selected=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) \
  | rofi -dmenu -i -p "Pilih Wallpaper:" \
    -theme-str 'window {width: 50%; height: 50%;}' \
    -format "s")

if [ -n "$selected" ]; then
  swww img "$selected" --transition-type any --transition-fps 60 --transition-duration 2
fi

