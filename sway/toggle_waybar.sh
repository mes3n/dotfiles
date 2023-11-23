#!/bin/sh

# ~=$HOME

if [ "$(pgrep waybar)" == "" ]
then
    exec $(eval "$@") >> /home/markus/.config/sway/toggle.log
else
    exec pkill waybar
fi

