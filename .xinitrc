exec dwm
[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources
setxkbmap -option ctrl:nocaps
xmodmap ~/.xmodmaprc
