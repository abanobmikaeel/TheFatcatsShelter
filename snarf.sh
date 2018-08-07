#!/bin/bash

script="repeat
	set minutes to random number from 1 to 60
	set interval to minutes * 60
	#delay interval
	set volume 100
	do shell script \"afplay /tmp/snarf.mp3\"
end repeat"

curl -L https://github.com/abanobmikaeel/TheFatcatsShelter/raw/develop/snarf.mp3 -o /tmp/snarf.mp3

echo "$script" | osascript