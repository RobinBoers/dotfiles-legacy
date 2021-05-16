#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

xcape -e 'Super_L=Alt_L|F1'
export QT_QPA_PLATFORMTHEME=qt5ct
nitrogen --restore &

run picom --experimental-backends -Cc
run lxsession
run nm-applet
#run tint2
