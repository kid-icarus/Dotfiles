# Colors
[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources

# Keyboard stuff
setxkbmap -option ctrl:nocaps
xmodmap ~/.xmodmaprc

# Font stuff
xset +fp /usr/share/fonts/local
xset fp rehash


# Start the Window Manager
exec dwm
