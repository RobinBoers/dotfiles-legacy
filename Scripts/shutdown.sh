#!/bin/bash
zenity --title="Session" --question --text "Shutdown Computer?" --no-wrap --ok-label "Yes" --cancel-label "No"
if [ $? = 0 ] ; then
shutdown now;
fi
