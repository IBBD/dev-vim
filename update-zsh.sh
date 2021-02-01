#!/bin/bash
# 
# 
# Author: alex
# Created Time: 2021年02月01日 星期一 10时50分37秒
set -eo pipefail

shrc="~/.zshrc"
github_clone_func="
github-clone-api() {
    echo \"git clone https://github.com.cnpmjs.org/\$1\"
    git clone \"https://github.com.cnpmjs.org/\$1\"
}
"
update_flag="# Added by update-zsh.sh"

# 更新代码
update() {
    echo "$update_flag" >> ~/.zshrc
    echo "$github_clone_func" >> ~/.zshrc
}

# backup
cp ~/.zshrc ./zsh-rc.bak
if 
    cat ~/.zshrc|grep "$update_flag"
then
    echo "update-zsh is in ~/.zshrc!"
    line_num=$(cat ~/.zshrc|grep -n "$update_flag")
    line_num=$(echo "$line_num"|cut -d":" -f1)
    echo "delete line $line_num and after..."
    sed -i "$line_num,\$d" ~/.zshrc
else
    echo "" >> ~/.zshrc
fi

update
echo "update ok"
echo "更新完成之后，注意看一下~/.zshrc文件是否正常"
