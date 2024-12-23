#!/usr/bin/env zsh

###################################
# Exporting Environment Variables #
###################################

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
# XDG_RUNTIME_DIR is set by default.
#export XDG_RUNTIME_DIR="/run/user/$UID"

export QT_QPA_PLATFORM="wayland;xcb"
export XDG_CURRENT_DESKTOP=Hyprland
#export XDG_SESSION_DESKTOP=sway
#export XDG_CURRENT_SESSION_TYPE=wayland
#export GDK_BACKEND="wayland,x11"
#export MOZ_ENABLE_WAYLANDF=1

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000 # Maximum events for internal history
export SAVEHIST=10000 # Maximum events in history file

export VIMCONFIG="$XDG_CONFIG_HOME/nvim"

# Man pages
export MANPAGER='nvim +Man!'

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# X11
#export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# NPM
#export NPM_PATH="$XDG_CONFIG_HOME/node_modules"
#export NPM_BIN="$XDG_CONFIG_HOME/node_modules/bin"
#export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/node_modules"

# PATH
#export PATH="$NPM_BIN:$PATH"
#Add Python & pip?
