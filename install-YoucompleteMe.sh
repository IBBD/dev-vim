#!/bin/bash
# 
# 安装YoucompleteMe需要额外的步骤
# 

cd ~/.vim/bundle/YoucompleteMe

git submodule update --init --recursive
python install.py

