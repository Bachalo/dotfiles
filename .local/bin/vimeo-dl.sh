#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: <video-url> <referer-url>"
    exit 1
fi

yt-dlp -f "bv*+ba/b" "$1" --referer "$2"
