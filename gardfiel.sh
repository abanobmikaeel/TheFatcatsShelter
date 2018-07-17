#!/bin/bash
# Get gardfiel
path="$PWD/gardfiel.png"
curl https://fatorangecatbrewcocom.files.wordpress.com/2016/10/fullsizerender9.jpg?w=1644 > $path

# Set the background image
p1="tell application \"System Events\""
p2="tell current desktop"
p3="set picture to \"$path\""
p4="end tell"
osascript -e "$p1" -e "$p2" -e "$p3" -e "$p4" -e "$p4"

# Write new aliases to git
echo -e '\n# gardfiel says hello' >> ~/.bash_profile
echo "alias git='mondays'" >> ~/.bash_profile
echo $'function mondays() { if [ `bc -l <<< "scale=4 ; ${RANDOM}/32767"` \< ".5000" ]; then echo \'I hate mondays :(\'; else echo \'I love lasagna :)\'; fi; }' >> ~/.bash_profile
source ~/.bash_profile