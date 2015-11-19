#!/bin/bash 

if [ ! -f ~/.vimrc ]; then 
    ln -s $PWD/dot-vimrc ~/.vimrc
else 
    echo '~/.vimrc文件已经存在'
fi

# 配置插件目录
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

# 安装或者更新
vim +BundleInstall! +BundleClean +q

echo 'All is ok!'
