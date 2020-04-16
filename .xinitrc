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

catwm)
		  exec catwm
		  exec /home/jake/.scripts/catstart &
		  ;;

lwm)  
		exec /home/jake/.scripts/lwmstart &
		exec lwm
		  ;;

*)
         exec bspwm
          ;;
esac
