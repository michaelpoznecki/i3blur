#!/bin/bash
TMPBG=/tmp/screen.png
RES=$(xdpyinfo | grep "dimensions:" | awk {'print $2'})

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=8:1" -vframes 1 $TMPBG
i3lock -i $TMPBG
