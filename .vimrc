set nocompatible      "去除兼容

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'powerline/powerline'
"Plugin 'powerline/fonts'
Plugin 'luochen1990/rainbow'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'klen/python-mode'


call vundle#end()
filetype plugin indent on


syntax enable
set background=dark   "设置暗色背景
     let g:solarized_termcolors=256
     let g:solarized_termtrans=1
     let g:solarized_contrast="normal"
     let g:solarized_visibility="normal"
     colorscheme solarized
syntax on             "
set mouse=a
set mousehide
scriptencoding utf-8

set clipboard=unnamed

set shortmess+=filmnrxoOtT "避免hit Enter
set virtualedit=onemore "允许每行最后一个多字符
set history=1000
set spell
set hidden
set iskeyword-=. "认为是单词的分隔符
set iskeyword-=#
set iskeyword-=-

"当提交git commit时候，光标信息在第一行
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

"set backup

"set undofile
"set undodir=$HOME/.vim/undo
"set undolevels=1000
"set undoreload=10000

set showmode

set cursorcolumn
set cursorline

set ruler "右下角ruler显示
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) "ruler规则
set showcmd " 显示以及在v模式下显示

set laststatus=2 "设置statusline宽度
set statusline=%<%f\
set statusline+=%w%h%m%r
set statusline+=\ [%{&ff}/%Y]
set statusline+=\ [%{getcwd()}]
set statusline+=%=%-14.(%l,%c%V%)\ %p%% "固定右下角

set backspace=indent,eol,start
set linespace=0
set number
set showmatch
set incsearch
set hlsearch
set winminheight=0
set ignorecase "忽略大小写
set smartcase "如果大写就敏感，小写不敏感
set wildmenu "显示待选列，而非补全
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,] "显示可以折叠的
set scrolljump=5
set scrolloff=3
set foldenable
"set foldmethod=indent
"set foldnestmax=1
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.




set wrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=5
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow
"set pastetoggle=<F12>  "paste模式开关

"不懂
"autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
"autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
"autocmd BufNewFile,BufRead *.coffee set filetype=coffee


noremap j gj
noremap k gk

"stupid shift key fixed
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

"nerdtree
     map <C-e> :NERDTreeToggle<CR>
     map <leader>e :NERDTreeFind<CR>
     nmap <leader>nt :NERDTreeFind<CR>

     let NERDTreeShowBookmarks=1
     let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
     let NERDTreeChDirMode=0
     let NERDTreeQuitOnOpen=1
     let NERDTreeMouseMode=2
     let NERDTreeShowHidden=1
     let NERDTreeKeepTreeInNewTab=1
     let g:nerdtree_tabs_open_on_gui_startup=0

"YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_cache_omnifunc = 1


"airline
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1 "显示buffer
let g:airline#extensions#tabline#buffer_nr_show = 1 "显示buffer number

"vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

"jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0

"vimgutter
set updatetime=250
let g:gitgutter_override_sign_column_highlight = 0
"highlight SignColumn ctermbg=whatever

"vim-syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pyflakes']

"pymode
let g:pymode_lint_checkers = ['pep8', 'pyflakes']
let g:pymode_trim_whitespaces = 0
let g:pymode_options = 0
let g:pymode_rope = 0
