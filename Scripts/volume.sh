#!/bin/bash
#
# Volume script for OpenBox
#

function toggle(){
    amixer set Master toggle
}

function increase(){
    amixer set Master 2%+ unmute
}

function decrease(){
    amixer set Master 2%- unmute
}

case $1 in
    "toggle")
    toggle;;
    "increase")
    increase;;
    "decrease")
    decrease;;
esac    