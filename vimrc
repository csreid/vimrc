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
set tabstop=4
set shiftwidth=4
set smarttab
set nu
set splitright
set ruler

nmap <silent> <Space> :noh <Enter>
nmap <S-h> <C-W>h
nmap <S-l> <C-W>l
nmap <S-k> <C-W>k
nmap <S-j> <C-W>j
nmap <C-j> <C-e>
nmap <C-k> <C-y>

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | 172vnew | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:stdd_in") | NERDTree | endif

color dante
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'
