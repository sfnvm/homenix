" TrungPT vimrc
" (GitHUB)[]
" UTF-8

" +------------------+
" | GENERAL SETTINGS |
" +------------------+
set nocompatible                " Don't make vim vi-compatible
syntax on                       " Enable syntax highlighting
set number                      " Set line numbering

set tabstop=8                   " ┐
set softtabstop=0               " │
set expandtab                   " │ Set tabs 
set shiftwidth=4                " │
set smarttab                    " ┘

set autoindent                  " Set indent to the new line

set laststatus=2                " Light Line display correctly
set ttimeoutlen=30              " Light Line Plugins delay on switching mode

set backspace=indent,eol,start  " Allow backspace in INSERT-MODE (MacOS problem)


" +--------------------------+
" | Quicker windows movement |
" +--------------------------+
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" +------+
" | TEST |
" +------+
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Prevent Vim from clearing clipboard on exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))
" autocmd VimLeave * call system("xclip -o | xclip -selection clipboard")

" +--------+
" | VUNDLE |
" +--------+
if filereadable(expand("~/.vimrc.vundles"))
   source ~/.vimrc.vundles
endif


" +--------+
" | OTHERS |
" +--------+
colorscheme molokai             " Plugin settings | Vim Color Schemes
