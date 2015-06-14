if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
wmname LG3D
xset +fp /usr/share/fonts/local
xset fp rehash
feh --bg-scale '/usr/share/backgrounds/wallpaper.jpg'
sxhkd &
exec bspwm
