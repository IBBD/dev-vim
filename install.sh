#!/bin/bash 

if [ ! -f ~/.vimrc ]; then 
    ln -s $PWD/dot-vimrc ~/.vimrc
else 
    echo '~/.vimrc文件已经存在'
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir ~/.vim/bundle -p
fi

if [ -d ~/.vim/bundle/vundle ]; then 
    cd ~/.vim/bundle/vundle
    git pull
else 
    cd ~/.vim/bundle
    git clone http://github.com/gmarik/vundle.git
fi 


vim +BundleInstall! +BundleClean +q

