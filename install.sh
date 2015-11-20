#!/bin/bash 

source_vimrc=$PWD/dot-vimrc

if [ ! -f ~/.vimrc ]; then 
    ln -s $source_vimrc ~/.vimrc
else 
    echo '~/.vimrc文件已经存在'

    # 判断vimrc是否链接到当前的dot-vimrc
    link_path=$(ls -al ~/.vimrc)
    link_path=${link_path#*>}
    link_path=${link_path#* }
    if [ "$source_vimrc" = "$link_path" ]; then
        echo "Install or Update is begin: "
    else
        echo $link_path
        echo "ERROR: ~/.vimrc没有链接到$source_vimrc"
        exit 1
    fi
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
