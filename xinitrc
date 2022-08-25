#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/opt/X11/etc/X11/xinit/.Xresources
sysmodmap=/opt/X11/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge $sysresources
    else
        xrdb -nocpp -merge $sysresources
    fi
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge "$userresources"
    else
        xrdb -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

xsetroot -solid '#4a525a'
which dwm && USERWM=$HOME/src/dotfiles/bin/dwm-launch

# start some nice programs
if [ -d /opt/X11/etc/X11/xinit/xinitrc.d ] ; then
	for f in /opt/X11/etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
