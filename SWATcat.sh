#!/bin/bash

path="$PWD/SWATkat.jpg"
curl -s  "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/SwatKatsseason2.jpg/250px-SwatKatsseason2.jpg" > $path

p1="tell application \"System Events\""
p2="tell current desktop"
p3="set picture to \"$path\""
p4="end tell"
#osascript -e "$p1" -e "$p2" -e "$p3" -e "$p4" -e "$p4"

echo "#YOUVE BEEN fatSWATcatted" >> ~/.bash_profile
echo "printf '\e[38;5;0m'" >> ~/.bash_profile
echo "printf '\e[48;5;0m'" >> ~/.bash_profile
printf '\e[38;5;0m'
printf '\e[48;5;0m'
echo "#end of fatSWATcat" >> ~/.bash_profile

rm $path