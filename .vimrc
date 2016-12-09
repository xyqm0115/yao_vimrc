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

set backup

set undofile
set undolevels=1000
set undoreload=10000

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
 autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer>
 autocmd BufNewFile,BufRead *.coffee set filetype=coffee


 noremap j gj
 noremap k gk

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

 "airline
 let g:airline_theme='jellybeans'
 let g:airline#extensions#tabline#enabled = 1

 "vim-indent-guides
 let g:indent_guides_start_level = 2
 let g:indent_guides_guide_size = 1
 let g:indent_guides_enable_on_vim_startup = 1
