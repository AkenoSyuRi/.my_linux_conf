#!/bin/bash

cwd=$(dirname "$0" | xargs -n1 realpath)

# 检查第一个参数是否是 -f
if [ "$1" = "-f" ]; then
    force=true
else
    force=false
fi
echo "force=$force"

if $force || [ ! -e "$HOME/.tmux.conf" ]; then
    ln -sf "$cwd/conf/tmux.conf" "$HOME/.tmux.conf"
fi

if $force || [ ! -e "$HOME/.vimrc" ]; then
    ln -sf "$cwd/conf/vimrc" "$HOME/.vimrc"
fi

# TODO: add .condarc to ~/.condarc
# TODO: add pip.conf to ~/.config/pip.conf
