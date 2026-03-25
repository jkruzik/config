#!/bin/bash

MACHINE_NAME=$(hostname)

case "$MACHINE_NAME" in
    "arc2w")
        nvidia-settings --assign "CurrentMetaMode=DP-0: nvidia-auto-select @1920x1200 +4480+0 {ViewPortIn=1920x1200, ViewPortOut=1920x1200+0+0}, DP-2: nvidia-auto-select @2560x1440 +1920+0 {ViewPortIn=2560x1440, ViewPortOut=2560x1440+0+0}, DP-4: nvidia-auto-select @1920x1200 +0+0 {ViewPortIn=1920x1200, ViewPortOut=1920x1200+0+0}" && xrandr --output DP-2 --primary
        ;;

    *)
        xrandr --auto
        ;;
esac
