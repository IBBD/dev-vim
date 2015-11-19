#!/bin/bash 

ln -s $PWD/dot-vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle ]; then
    mkdir ~/.vim/bundle -p
fi



