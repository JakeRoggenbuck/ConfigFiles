#!/bin/sh

case $WM in 

bspwm)
          exec bspwm
          ;;
i3)
          exec i3
          ;;
dwm)
          exec dwm
		  exec /home/jake/.scripts/bspwmstartup &
          ;;
gnome)
          exec gnome-session
          ;;

cinna)
		  exec cinnamon-session
		  ;;

*)
         exec bspwm
          ;;
esac
