#!/usr/bin/env zsh

###########
# Aliases #
###########

source $ZDOTDIR/aliases.zsh

##########
# Prompt #
##########

fpath=($ZDOTDIR/ $fpath)
source $ZDOTDIR/prompt.zsh

#############
# Vi Keymap #
#############

# Vi mode
bindkey -v

##############
# Completion #
##############

zstyle :compinstall filename '/home/monica/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
