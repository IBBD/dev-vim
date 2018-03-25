# tmux
配置文件

## powerline配置

```sh
# 设置本地天气
# 代码中有相应的配置
# 例如需要配置广州的，对应的城市代码是：2161838
# 在/path/to/tmux-powerline/powerline.sh文件前面增加：
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="2161838"

# 具体文档见：segments/weather.sh
# 1. Go to Yahoo weather http://weather.yahoo.com/
# 2. Find the weather for you location
# 3. Copy the last numbers in that URL. e.g. "http://weather.yahoo.com/united-states/california/newport-beach-12796587/" has the numbers "12796587"
```

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

### 用Ag/Ack在Vim中搜索项目代码

输入`:Ack test_blah`便可以在当前项目代码中搜索`"test_blah"`。常用快捷键：

```
?           帮助，显示所有快捷键
Enter/o     打开文件
O           打开文件并关闭Quickfix
go          预览文件，焦点仍然在Quickfix
t           新标签页打开文件
q           关闭Quickfix
```

快捷键设置：

```
map <c-f> :Ack<space>
```

以后就可以在普通模式下，使用`Ctrl + F`便可以自动输入`:Ack `

### 自定义快捷键

- 快速将Tab键替换为4个空格：`<Leader>tt` （这里是一个反斜杠）
- Tagbar快捷键：`<F3>`

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

## 常用快捷键列表

- za: 快速折叠和取消折叠
- <Leader>e: 目录浏览
- <Leader>\|: md文件中的表格对齐
- <F3>: 标签浏览

### Python相关快捷键

Key     | Command
--------|--------------------------
[[      | Jump to previous class or function (normal, visual, operator modes)
]]      | Jump to next class or function  (normal, visual, operator modes)
[M      | Jump to previous class or method (normal, visual, operator modes)
]M      | Jump to next class or method (normal, visual, operator modes)
aC      | Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
iC      | Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
aM      | Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
iM      | Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
]t      | Jump to beginning of block
]e      | Jump to end of block
]v      | Select (Visual Line Mode) block
]<      | Shift block to left
]>      | Shift block to right
]#      | Comment selection
]u      | Uncomment selection
]c      | Select current/previous class
]d      | Select current/previous function
]<up>   | Jump to previous line with the same/lower indentation
]<down> | Jump to next line with the same/lower indentation

- 运行python代码：`<leader>r`


## 附录

- [像IDE一样使用VIM](https://github.com/yangyangwithgnu/use_vim_as_ide)

