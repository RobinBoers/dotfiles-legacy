#!/usr/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%a %d %b, %T")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo -e "  $BATPERC "
}

#Define the volume
Volume() {
        VOLPERC=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')
        echo -e "  $VOLPERC "
}

#Define the brightness
Brightness() {
        BRHPERC=$(xbacklight -get)
        BRHPERCROUND=$(printf '%.*f\n' 0 $BRHPERC)
        echo -e "  $BRHPERCROUND "
}

# Print the clock

while true; do
        #echo "   Activities %{c}$(Clock) %{r} $(Volume)  $(Brightness)  $(Battery)   "
        echo "%{c}$(Clock) %{r} $(Volume)  $(Brightness)  $(Battery)   "
        sleep 1
done
