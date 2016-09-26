#!/bin/bash
# 安装配色插件
# 
# Author: Alex
# Created Time: 2016年09月26日 星期一 15时21分50秒

if [ ! -d molokai ]; then
    if [ ! -d ~/.vim/colors ]; then 
        mkdir ~/.vim/colors/
    fi
    git clone git@github.com:tomasr/molokai.git
    cp molokai/colors/molokai.vim ~/.vim/colors/
else
    echo "./molokai目录已经存在"
fi

echo "All is OK!"
