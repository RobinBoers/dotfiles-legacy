#!/bin/sh

xcape -e 'Super_L=Alt_L|F1'

lxsession &
nitrogen --restore &
nm-applet &
#volumeicon &
