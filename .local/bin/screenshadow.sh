#!/bin/bash

src="$1"

# Adjust as needed to suit your desktop environment
# Defaults set for vanilla Ubuntu.
radius=5
inset=2

height=$(identify -format '%h' "$src")
width=$(identify -format '%w' "$src")

outfile="pretty_$(basename "$1")"

convert \
  \( -size ${width}x${height} xc:none -fill white \
  -draw "roundRectangle 0,0 $(($width-$inset)),$(($height-$inset)) $radius,$radius" \
  -draw "rectangle 0,10 $(($width-$inset)),$(($height-$inset))" \
  "$src" -compose SrcIn -composite \) \
  \( -clone 0 -background \#231f20 -shadow 60x15+0+15 \) \
  -reverse -background none -compose Over -layers merge +repage \
  "$outfile"

echo "Saved to $outfile"
