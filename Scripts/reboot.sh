#!/bin/bash
zenity --title="Session" --question --text "Reboot Computer?" --no-wrap --ok-label "Yes" --cancel-label "No"
if [ $? = 0 ] ; then
reboot;
fi
