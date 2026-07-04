#!/bin/bash

DOCK_CMD="nwg-dock-hyprland -i 28 --nolauncher"

start_dock() {
    echo "Triggered at $(date)"

    active_ws=$(hyprctl activeworkspace -j | jq '.id')
    win_count=$(hyprctl clients -j | jq "[.[] | select(.workspace.id == $active_ws)] | length")

    echo "Workspace: $active_ws | Windows: $win_count"

    pkill -9 -f nwg-dock-hyprland
    sleep 0.2

    if [ "$win_count" -gt 0 ]; then
        echo "Launching in AUTOHIDE mode"
        $DOCK_CMD -d &
    else
        echo "Launching in NORMAL mode" 
        $DOCK_CMD &
    fi
}

start_dock  # initial run

socat -U - UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | \
while read -r line; do
    case "$line" in
        openwindow*|closewindow*|workspace*)
            echo "Event: $line"
            start_dock
            ;;
    esac
done
