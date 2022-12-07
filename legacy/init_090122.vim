set nocompatible		" be improvec, required
filetype off			" required

"----- PLUGINS -----"
call plug#begin('~/.config/nvim/plugged')
Plug 'severij/vadelma'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
"Plug 'airblade/vim-gitgutter'"
Plug 'easymotion/vim-easymotion'
Plug 'KKPMW/vim-sendtowindow'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'dense-analysis/ale'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
call plug#end()

"----- GENERAL SETTINGS -----"
colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>

filetype plugin indent on
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
" set relativenumber
" set rnu
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set updatetime=1000 "set update for gitgutter update

"----- PYTHON SETTINGS -----"
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"----- MARKDOWN PREVIEW -----"
"let g:mkdp_auto_close = 1 " 1 = autoclose
"let g:mkdp_command_for_global = 1 " Can be used in all files
"let g:mkdp_auto_start = 1 " Preview window after entering the markdow buffer

"----- TO-DO -----"
"- Try gitgutter branch display
