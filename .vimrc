set encoding=utf-8
:set expandtab
" These commands are necessary for plugins to work
filetype off                       " plugin-related
call pathogen#infect()             " plugin-related
call pathogen#helptags()           " plugin-related
filetype plugin on                 " plugin-related

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
autocmd FileType xml setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType php setlocal expandtab shiftwidth=2 tabstop=2

" Copy and paste commands
noremap <C-y> "+y
noremap <C-p> "+gP
noremap <C-k> ggVG"+y
noremap <C-j> ggVG"+x

" O and o should not work in that bizarre way
map o o<C-c>
map O O<C-c>

" These commands highlight unnecessary spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
