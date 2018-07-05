#!/bin/bash

#shell scripting - word search & replace

read -p 'Filename: ' filename
read -p 'Word: ' word
read -p 'Replace with: ' replace

sed -i "s/$word/$replace/g" $filename.txt







