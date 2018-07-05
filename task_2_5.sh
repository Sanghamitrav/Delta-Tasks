#!/bin/bash

#shell scripting - command frequency

cat .bash_history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n 11

#echo $freq

#head -n 10 .bash_history | sort -nr | nl





