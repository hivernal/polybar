if type "xrandr"; then
  for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR="${monitor}" polybar -c "${HOME}/.config/polybar/config.ini" &
  done
else
  MONITOR=eDP-1 polybar -c "${HOME}/.config/polybar/config.ini" &
fi
