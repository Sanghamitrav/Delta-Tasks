#!/bin/bash

#shell scripting - deleting empty files

#sudo find /home/sanghamitra/ -type d,f -empty -mtime +14 | wc -l
#sudo find /home/sanghamitra/ -type d,f -empty -mtime +14 -print

sudo find /home/sanghamitra/ -type d,f -empty -mtime +14 | xargs rmdir,rm -f




