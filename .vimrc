source $VIMRUNTIME/indent.vim
behave mswin

set guifont=Monaco:h14
set ai
set nocp
set nocompatible
set nopaste
set pastetoggle=<F12>
set hls
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch
set background=light
set display=lastline
set t_Co=256

colorscheme molokai
syntax on

highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight Normal ctermbg=black ctermfg=white
filetype plugin on
filetype indent on
filetype on
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufEnter *.php :%s/[ \t\r]\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2

"============utf8 ===============
set fileencodings=utf8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8
set backspace=indent,eol,start
set termencoding=utf-8

"============ key mapping ============
map <F8> :set nu!<CR>
map <F9> :Tlist<CR>
map <F10> :NERDTree<CR>
vmap <C-j> :m+1<CR>
vmap <C-k> :m-2<CR>
