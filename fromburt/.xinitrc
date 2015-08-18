#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

## To hopefully give graphical desktop environments accessibility with gtk aps
export SAL_USE_VCLPLUGIN="gtk"
export GTK_MODULES=gail:atk-bridge

 exec startfluxbox
# exec gnome-session
# exec startkde
#exec mate-session
# exec startxfce4
# ...or the Window Manager of your choice
