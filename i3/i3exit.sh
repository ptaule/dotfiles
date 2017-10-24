#!/usr/bin/env bash

i3_path=~/.i3
is_playing=false

lock() {
    if [[ $(playerctl status) = "Playing" ]]; then
        is_playing=true
        playerctl pause
    fi

    $i3_path/i3lock-extra.sh -s -b -g -o $i3_path/lock.png

    if [[ "$is_playing" = "true" ]]; then
        playerctl play
    fi

    # i3lock -c 000014 -i lock.png
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
