#!/bin/bash

cwd=$(dirname $0 | xargs -n1 realpath)

if [ ! -e "~/.tmux.conf" ]; then
    ln -sf $cwd/conf/tmux.conf ~/.tmux.conf
fi

if [ ! -e "~/.vimrc" ]; then
    ln -sf $cwd/conf/vimrc ~/.vimrc
fi
