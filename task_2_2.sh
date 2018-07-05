#!/bin/bash

#shell scripting - ip count

cat web_logs.txt | sort | uniq -c | sort -nr | head -n 20







