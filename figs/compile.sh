#!/bin/bash
for i in *.tex; do pdflatex --shell-escape $i;done

find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
  do inkscape --without-gui --file="${file}"  --export-plain-svg="${file%.*}.svg"
done