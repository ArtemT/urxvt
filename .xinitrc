# ~/.xinitrc
# This file is sourced when running startx and 
#    other programs which call xinit

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

xsetroot -solid '#101010' &
xset -b &
/usr/bin/amixer -c 0 -- sset Master playback '25%'

/usr/bin/dunst &
/usr/bin/urxvtd -q -f -o &
/usr/bin/parcellite &
/usr/bin/xxkb &

xrdb -merge ~/.Xresources

exec i3
