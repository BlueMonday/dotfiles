if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
wmname LG3D
sxhkd &
exec bspwm
