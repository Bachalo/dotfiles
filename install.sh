#!/usr/bin/env bash

sudo pacman -S - < pkglist.txt

paru -S - < aurlist.txt

git submodule update --init --recursive

cd .config/nvim

git checkout new

git pull

cd ../..

stow .
