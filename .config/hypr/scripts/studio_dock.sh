#!/bin/bash

case $1 in
    "toggle-mic")
        wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
        ;;
    "toggle-cam")
        # This "soft-blocks" the camera by unloading the kernel module
        if lsmod | grep -q uvcvideo; then
            sudo modprobe -r uvcvideo && notify-send "Studio" "Camera Blocked"
        else
            sudo modprobe uvcvideo && notify-send "Studio" "Camera Enabled"
        fi
        ;;
    "set-mic")
        wpctl set-volume @DEFAULT_AUDIO_SOURCE@ "$2"%
        ;;
esac
