#!/usr/bin/env bash

# Linux-style XDG configuration 
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
[ -z "$XDG_RUNTIME_DIR" ] && export XDG_RUNTIME_DIR="$XDG_CACHE_HOME"

if [[ $(uname) == "Darwin" ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	. "$HOME/.cargo/env"
fi

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$HOME/.local/bin/:$HOME/.local/share/go/bin:$HOME/.turso:$PATH"
