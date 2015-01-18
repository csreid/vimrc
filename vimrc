execute pathogen#infect()

syntax on
filetype plugin indent on
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline 
augroup END
set hlsearch
set nowrap
set tabstop=2
set shiftwidth=2
set smarttab
set nu
set splitright
set ruler
set tags=tags

nmap <silent> <Space> :noh <Enter>
nmap <S-h> <C-W>h
nmap <S-l> <C-W>l
nmap <S-k> <C-W>k
nmap <S-j> <C-W>j
nmap <C-j> <C-e>
nmap <C-k> <C-y>
nmap <C-d> <C-W><C-]>

vmap <C-c> "*y

set backspace=indent,eol,start

iab DB.withConnection{} DB.withConnection{implicit<Space>c=>}<Left><CR><CR><Up><Tab>SQL()<Left>""""""<Left><Left><Left><CR><Right><Right><Right><CR><Up><Right><Right>

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:stdd_in") | NERDTree | endif

autocmd BufEnter * colorscheme dante
autocmd BufEnter *.html colorscheme desert
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'

execute pathogen#infect()
