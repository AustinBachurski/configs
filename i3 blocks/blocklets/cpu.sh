#!/bin/bash
temp=$(
    sensors 'coretemp-*' \
        | grep '^Package id' \
        | awk '{ print $4 }' \
        | grep -o '[0-9]\+' \
        | head -n1
)



printf '%s\u2009°C\n' $temp


