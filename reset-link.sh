#!/bin/bash

source_vimrc=$PWD/dot-vimrc
source_tmux_conf=$PWD/dot.tmux.conf

rm ~/.tmux.conf
ln -s $source_tmux_conf ~/.tmux.conf

rm ~/.vimrc
ln -s $source_vimrc ~/.vimrc

echo "ok"
