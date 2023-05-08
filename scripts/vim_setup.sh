#!/bin/bash

vim_path=~/.vimrc

touch $vim_path

cat > $vim_path << EOF
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
EOF

