#!/bin/bash

path="$PWD/SWATkat.png"
curl -s  "https://www.google.com/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwiHuPLbnKncAhUFSN8KHQX4AogQjRx6BAgBEAU&url=http%3A%2F%2Fgoogle.com%2Fsearch%3Ftbm%3Disch%26q%3DSWAT%2520Kats%3A%2520The%2520Radical%2520Squadron&psig=AOvVaw2G38UcHUd0fCtcM9baym1V&ust=1532023043781346" > $path

p1="tell application \"System Events\""
p2="tell current desktop"
p3="set picture to \"$path\""
p4="end tell"
osascript -e "$p1" -e "$p2" -e "$p3" -e "$p4" -e "$p4"

echo "#YOUVE BEEN fatSWATcatted" >> ~/.bash_profile
echo "printf '\e[38;5;0m Foreground color: black\n'" >> ~/.bash_profile
echo "printf '\e[48;5;0m Background color: black\n'" >> ~/.bash_profile
printf '\e[38;5;0m Foreground color: black\n'
printf '\e[48;5;0m Background color: black\n'
echo "#end of fatSWATcat" >> ~/.bash_profile