#!/usr/bin/env bash

sudo pacman -S - < pkglist.txt

paru -S - < aurlist.txt

stow .
