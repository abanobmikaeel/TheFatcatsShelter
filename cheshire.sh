#!/bin/bash
# https://www.asciiart.eu/books/alice-in-wonderland

cat << "EOF"
*******************************************
You may think that this is bad,
*******************************************

           .'\   /`.
         .'.-.`-'.-.`.
    ..._:   .-. .-.   :_...
  .'    '-.(o ) (o ).-'    `.
 :  _    _ _`~(_)~`_ _    _  :
:  /:   ' .-=_   _=-. `   ;\  :
:   :|-.._  '     `  _..-|:   :
 :   `:| |`:-:-.-:-:'| |:'   :
  `.   `.| | | | | | |.'   .'
    `.   `-:_| | |_:-'   .'
 jgs  `-._   ````    _.-'
          ``-------''

*******************************************
but surely you must realize that I am ___!
*******************************************
EOF

# Get Cheshire and set as background
path="$PWD/cheshire.png"
curl -s  "https://vignette.wikia.nocookie.net/onceuponatime/images/6/6d/Alice_au_Pays_des_Merveilles_%28Disney%29_1951_Chat_du_Cheshire_chafouin_sourire.png/revision/latest?cb=20160913114206&path-prefix=fr" > $path

p1="tell application \"System Events\""
p2="tell current desktop"
p3="set picture to \"$path\""
p4="end tell"
osascript -e "$p1" -e "$p2" -e "$p3" -e "$p4" -e "$p4"

# Load array of terminal themes
IFS=',' read -r -a themes <<< 'basic,grass,homebrew,man page,novel,ocean,pro,red sands,silver aerogel,solid colors'

# RGB does not work atm
# rgb="{$(jot -r 1 0 255), $(jot -r 1 0 255), $(jot -r 1 0 255)}"
# p2="set background-color of window 1 to "

# Using themes rather than RGB
start="tell application \"Terminal\""
theme="set current settings of window 1 to settings set "
end="end tell"

# Loop through the terminal themes & sleep
function nuclear() {
    while true; do
        for i in "${themes[@]}"; do
            sleep .3
            osascript -e "$start" -e "$theme\"$i\"" -e "$end"
        done
    done
}

# # Write riddle answer for kill script alias
echo -e '\n# cheshire says hello' >> ~/.bash_profile
echo "alias mad='saveMe'" >> ~/.bash_profile
echo $'function saveMe() { kill -9 `ps -u $USER | grep "cheshire.sh" | grep -v grep | cut -d\' \' -f 5`; }' >> ~/.bash_profile

# Need . to source bash_profile
. ~/.bash_profile

# Remove image & run thread in background
rm $path
nuclear &
