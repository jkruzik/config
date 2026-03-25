#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Setup monitors
MONITORS=$(polybar --list-monitors | cut -d":" -f1)
case $(hostname) in
  "arc2w")
    MONITORS="DP-2 DP-0"
  ;;
esac
echo $MONITORS

# Launch bars
for m in $MONITORS; do
    MONITOR=$m polybar --reload example &
done
