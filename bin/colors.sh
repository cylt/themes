#!/bin/bash

cd iterm2
FILES=*
echo "Add these to the README.md"
echo
for f in $FILES
do
  touch ../colors/$f.json
  iterm-colors compile $f -p > ../colors/$f.json
  printf "#### $f\n"
  printf "![$f](https://raw.githubusercontent.com/zdj/themes/master/screenshots/$f.png)\n"
done
cd ..
