#!/usr/bin/bash

ignore=("./README.md" "./set_up.sh" "zshenv")

create_symlinks() {
    for path in $1/*
    do
        dir_name=${path%*/}

	if [[ -d $path ]] then
	    create_symlinks "$1/${dir_name##*/}"
        elif [[ -f $path ]] && ! [[ ${ignore[@]} =~ $path ]]; then
	    ln -sf "$PWD${path:1}" "${XDG_CONFIG_HOME}${path:1}"
	fi
    done
}

create_symlinks "."

ln -sf "$PWD/zshenv" "${HOME}/.zshenv"

# Install Packer
# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim
