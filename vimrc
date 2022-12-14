"===通用配置==="

"去掉vi的一致性"
set nocompatible
"显示行号"
set number
"隐藏滚动条"
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13
"开启语法高亮"
syntax on
"solarized主题设置在终端下的设置"
let g:solarized_termcolors=256
"设置背景色"
set background=dark
"颜色主题"
"colorscheme solarized
"设置不折行"
set nowrap
"设置以unix的格式保存文件"
set fileformat=unix
"设置C样式的缩进格式"
set cindent
"设置tab长度"
set tabstop=4
set shiftwidth=4
"显示匹配的括号"
set showmatch
"距离顶部和底部5行"
set scrolloff=5
"命令行为两行"
set laststatus=2
"文件编码"
set fenc=utf-8
"set backspace=2
"启用鼠标"
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
"忽略大小写"
set ignorecase
set incsearch
"高亮搜索项"
set hlsearch
"不允许扩展tab"
set noexpandtab
set whichwrap+=<,>,h,l
set autoread
"突出显示当前行"
set cursorline
"突出显示当前列"
"set cursorcolumn
"按F9进入粘贴模式"
set nopaste
set pastetoggle=<F9>

"===设置Vundle核心插件==="

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"安装的插件列表"
"核心插件，用于安装其他所有插件"
Plugin 'VundleVim/Vundle.vim'
"美化状态栏"
Plugin 'powerline/powerline'
"类似IDE的补全插件"
Plugin 'ycm-core/YouCompleteMe'
"添加一个树形目录"
Plugin 'preservim/nerdtree'
"缩进指示线"
Plugin 'Yggdroot/indentLine'
"自动格式化代码"
Plugin 'tell-k/vim-autopep8'
"括号和引号自动补全"
Plugin 'jiangmiao/auto-pairs'
"多行注释"
Plugin 'preservim/nerdcommenter'
"实时语法检查"
Plugin 'vim-syntastic/syntastic'
"美化状态栏"
Plugin 'Lokaltog/vim-powerline'
call vundle#end()
"开启文件类型自动检测，编写代码时自动换行对齐"
filetype plugin indent on

"===设置YouCompleteMe插件==="

"默认配置文件路径"
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"Python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
"禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
"语义补全提示框样式比较素雅的灰色的话，可以自己定义 highlight：
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black		
			
"===设置NERDTree插件==="

"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25


"===设置indentLine插件==="

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

"nerdcommenter的leader默认为\，可以用下面的命令更改"
let mapleader=','
"在normal模式下按v并移动光标选择需要注释的行，再按F4就可以为所有选中的行添加注释"
map <F4> <leader>ci <CR>


