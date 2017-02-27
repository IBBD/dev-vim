# tmux
配置文件

# dev-vim
适合程序猿使用的vim配置，偏向web开发。尽量避免臃肿和影响原生vim的功能，主要是避免影响原生vim的快捷键。

主要面向语言：

- Python
- Golang
- PHP
- Shell
- Javascript/React
- Markdown
- Json

说明：
本来使用spf13-vim这套插件，也许这插件是偏向前端开发的，用起来很不顺手，对vim原有的东西改变太多，渐生去意，故建立了这个项目。

## 更新记录

### 20160926

- 更新配色方案为molokai
- 新增了两个插件
- 优化了tagbar的使用，特别是golang

## 项目目标

- 尽量不要改变vim的习惯，包括快捷键等。
- 文档方面主要是markdown格式
- 开发语言方面主要是php，python，javascript等，支持react语法最好
- 交换大小写键和ESC键（基于xmodmap）

## 安装

安装之前最好先重装vim，把原有的配置清理掉。

```sh 
# 说明：该脚本也可以用于更新插件
git pull
./install.sh 
```

注：只在ubuntu平台下使用，其他平台表现未知。

升级的时候，如果提示YCM太旧，则可以重新编译安装YCM：`./install-YoucompleteMe.sh`


## 主要插件使用说明

### 自定义快捷键

- 快速将Tab键替换为4个空格：`<Leader>tt` （这里是一个反斜杠）

### tabular: 按照特定字符进行对齐

快捷键如下：

```
nmap <Leader>\& :Tabularize /&<CR>
vmap <Leader>\& :Tabularize /&<CR>
nmap <Leader>\= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>\= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>\=> :Tabularize /=><CR>
vmap <Leader>\=> :Tabularize /=><CR>
nmap <Leader>\: :Tabularize /:<CR>
vmap <Leader>\: :Tabularize /:<CR>
nmap <Leader>\:: :Tabularize /:\zs<CR>
vmap <Leader>\:: :Tabularize /:\zs<CR>
nmap <Leader>\, :Tabularize /,<CR>
vmap <Leader>\, :Tabularize /,<CR>
nmap <Leader>\,, :Tabularize /,\zs<CR>
vmap <Leader>\,, :Tabularize /,\zs<CR>
nmap <Leader>\<Bar> :Tabularize /<Bar><CR>
vmap <Leader>\<Bar> :Tabularize /<Bar><CR>
```

说明：Leader键默认就是`\\` （一个反斜杠），尽量不要修改成逗号

例如按等号对齐，可以输入：`\\\\=` （输入两个反斜杠，再输入一个等号）

### NERDTree: 目录文件浏览

快捷键如下：

```
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
```

### ctrlp: 快速浏览文件（当前文件夹）

快捷键是：`Ctrl + p`
在小窗口里面还可以使用：`Ctrl + j`, `Ctrl + k`

## 附录

- [像IDE一样使用VIM](https://github.com/yangyangwithgnu/use_vim_as_ide)

