if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
sxhkd &
exec bspwm
