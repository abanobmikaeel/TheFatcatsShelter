#!/bin/bash

curl -L https://github.com/abanobmikaeel/TheFatcatsShelter/raw/develop/tigger.scpt -o /tmp/output.scpt
nohup osascript /tmp/output.scpt 2>&1 > /dev/null & 