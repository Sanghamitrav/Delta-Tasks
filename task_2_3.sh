#!/bin/bash

#shell scripting - word search

read -p 'Filename: ' filename
read -p 'Word: ' word

grep -o $word $filename.txt | wc -l







