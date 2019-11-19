set nu
set hlsearch
syntax on

set noeb
set vb t_vb=
inoremap jj <Esc>`^

let mapleader=","
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

"切换buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [b :bnext<CR>

" user ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-h> <C-w>j
noremap <C-h> <C-w>k
noremap <C-h> <C-w>l

"插件设置 vim-plug
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
call plug#end()

" 插件相关配置
" 禁止 startify 自动切换目录
let g:startify_change_to_dir=0

" nerdtree
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>
