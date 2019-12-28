call plug#begin('~/.local/share/nvim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-commentary'
  " Plug 'scrooloose/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on

set statusline=%f

let mapleader = ','

set path+=**

set backupcopy=yes

set number
set relativenumber

set splitbelow              "Make splits default to below
set splitright              "and to the right

set smarttab
set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2

set autowriteall            " Auto write file when switching buffer
set complete=.,w,b,u        " Autocomplete from current buffer, current window, loaded buffers, unloaded buffers

set t_CO=256
colorscheme gruvbox
set background=dark

inoremap jk <esc>
cnoremap jk <esc>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

augroup myautocmd
  autocmd!
  autocmd BufWritePost init.vim source $MYVIMRC
  autocmd VimResized * :wincmd =
  autocmd InsertEnter * set cul
  autocmd InsertLeave * set nocul
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END


""""""
""" CocNvim
""""""

" Remap keys for gotos
nmap <silent> <C-g>] <Plug>(coc-definition)
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000
set updatetime=300
" don't give |ins-completion-menu| messages
set shortmess+=c
" always show signcolumns
set signcolumn=yes

