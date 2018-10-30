set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Some thing to do with the git...
Plugin 'tpope/vim-fugitive'

"Colorschemes.
Plugin 'flazz/vim-colorschemes'


Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'

"Auto Closing Brackets or something like that.
Plugin 'raimondi/delimitmate'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'hari-rangarajan/cctree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'Valloric/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
"
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

"Remove all trailing whitespace by pressing F5
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> :SyntasticToggleMode<CR>
nnoremap <F7> :TagbarOpen fj<CR>
nnoremap <C-a> :bp<CR>
nnoremap <C-d> :bn<CR>

set t_Co=256
set incsearch
set hidden
set showmatch
set noswapfile
set wildmenu
set bs=2
syntax on
:set nu
:set softtabstop=4 shiftwidth=4 expandtab
:colo heroku-terminal

"To highlight lines longer than 120 characters.
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#111111
    autocmd BufEnter * match OverLength /\%120v.*/
augroup END

"To open file right where it was closed.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"For the airline symbols.
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_theme='badwolf'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"For the CCTree
let g:CCTreeCscopeDb = "cscope.out"
let g:CCTreeRecursiveDepth = 1
let g:CCTreeMinVisibleDepth = 1

"gutentags
let g:gutentags_modules = ['ctags']

"UltiSnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
