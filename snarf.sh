#!/bin/bash

script="delay 1800
	repeat
	set minutes to random number from 1 to 60
	set interval to minutes * 60
	delay interval
	set volume 90
	do shell script \"afplay /tmp/snarf.mp3\"
end repeat"

curl -Ls https://github.com/abanobmikaeel/TheFatcatsShelter/raw/develop/snarf.mp3 -o /tmp/snarf.mp3

nohup osascript -e "$script" 2>&1 > /dev/null &