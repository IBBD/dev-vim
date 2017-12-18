#!/bin/bash
# 
# 安装YoucompleteMe需要额外的步骤
# 
sudo apt-get install cmake build-essential python-dev python3-dev

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python install.py

