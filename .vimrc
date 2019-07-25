set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"==========================================================="
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"==========================================================="
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"============================================================================================"

set encoding=utf-8
:set expandtab
filetype plugin on
" Comment"
let mapleader=","

" These commands make vim less ugly
syntax on                          " Turn the syntax on
set colorcolumn=80                 " Highlight 80th column
set hlsearch                       " Highlight search
set nu!                            " Display line numbers
set numberwidth=2 
set guioptions-=T                  " remove toolbar in gvim
set guioptions-=L                  " remove left-hand scroll bar in gvim

" These make vim more comfortable
set updatetime=25                  " Refresh more often
set autoindent                     " Turn autoindent on
set autochdir                      " Automatically change default directory
set wrap!                          " Autowraping lines

" filetype customizations
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType xml setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType tex setlocal expandtab shiftwidth=2 tabstop=2 nofoldenable
autocmd FileType php setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType lua setlocal expandtab shiftwidth=2 tabstop=2

" Move between tabs
nnoremap L  :tabnext<CR>
nnoremap H  :tabprev<CR>

" O and o should not work in that bizarre way
map o o<C-c>
map O O<C-c>

" These commands highlight unnecessary spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

"noremap <Leader>f :NERDTreeToggle<Enter>

