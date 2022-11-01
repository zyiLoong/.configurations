" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd				" 是否在底部的命令输入行显示当前命令的信息，比如在 visual 模式下显示选择的区域大小等。Show (partial) command in status line.
set showmatch			" 高亮显示对应的括号 Show matching brackets.
set ignorecase			" Do case insensitive match
set smartcase			" 搜索时如果有大写字母、则匹配大小写搜索
set incsearch			" 随着输入递进式搜索 Incremental search
"set autowrite			" Automatically save before commands like :next and :make
"set hidden				" Hide buffers when they are abandoned

" my config
set number 				" 显示行号
set rnu 				" 显示相对行号
set showmode  			" 底部显示，当前是命令模式还是插入模式
set t_Co=256  			" 256色
filetype indent on  	" 根据文件类型，自动载入对应的缩进规则
set autoindent  		" 按下回车后，下一行缩进与上一行保持一致
set hlsearch  			" 高亮搜索内容
set wildmenu  			" 命令模式下输入命令时，按tab显示所有可自动补的命令
set autoread  			" 有外部修改时，自动重读
set ruler 				" 在底部状态栏显示光标当前所在的“行,列”
set scrolloff=3 		" 向上下滚动时，光标到窗口上、下各 n 行时认为触顶、底，开始滚动内容
" set cursorline  		" 高亮当前行
set tabstop=4 			" Tab 长度是4个空格
set shiftwidth=4  		" 按下回车时，下一行如果自动缩进，缩进长度为4, read https://superuser.com/questions/594583/what-does-shiftwidth-do-in-vim-editor



" vim-plugin
"    call plug#begin()
"    " Plug 'preservim/NERDTree'
"    Plug 'davidhalter/jedi-vim'
"    Plug 'tmux-plugins/vim-tmux'
"    call plug#end()

" NERDTree
" autocmd VimEnter * NERDTreeToggle | wincmd p
" " Exit Vim if NERDTree is the only window left.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"     \ quit | endif
" map <F3> :NERDTreeToggle<CR>
" let NERDTreeIgnore = ['.pyc$', '.vscode','__pycache__','.swp','.json']
" let NERDTreeShowLineNumbers=1
