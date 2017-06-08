" =============================
" My vim config file
" humeng,2016-1-14
" version: 2.0
" =============================

" 定义快捷键的前缀，即<Leader>
let mapleader=";"
let g:mapleader=";"

" 设置初始窗口大小
" set lines=35 columns=118

" 设置中文不能显示问题
set fileencodings=utf-8,utf-16le,gb2312,gbk,gb18030

" 映射 jj 为 ESC 键
imap jj <ESC>

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
"set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 设置退格键无效问题
set backspace=indent,eol,start

" 配色方案
set background=dark
colorscheme molokai

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 设置 gvim 显示字体，最后的数字是指定字体的大小
if has('gui_running')
    " 禁止显示滚动条
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    " 禁止显示菜单和工具条
    set guioptions-=m
    set guioptions-=T

    if has('gui_win32')
        set guifont=Inziu_IosevkaCC_CL:h10
    else
        set guifont=Inziu\ IosevkaCC\ CL\ 10
    endif
endif

" 禁止折行
set nowrap

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 自动缩进
set cindent
" set autoindent

" 删除所有行末的空格
nnoremap <F12> :%s/[ \t\r]\+$//g<CR>

nnoremap <F10> :%s/\t/    /g<CR>

" pathogen
" 将 pathogen 自身也置于独立目录中，需要指定其路径
runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

" vim-powerline
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized16'

" MiniBufExpl
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<CR>
" Buffer 切换快捷键
map <C-Tab> :MBEbn<CR>
map <C-S-Tab> :MBEbp<CR>

" a.vim
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>

" NERDTree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置标题
let g:NERDTree_title="NERDTree"
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=32
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

