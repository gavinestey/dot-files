" set up some vim settings
" but not too customized so we can't live with defaults!
set nocompatible
syntax on
filetype indent on
colorscheme elflord
set showmatch

" disable startup message
set shortmess+=I

" fix OSX keybindings: need changes in .bash_profile too
map <ESC>[5D <C-Left>
map <ESC>[5C <C-Right>
map! <ESC>[5D <C-left>
map! <ESC>[5C <C-Right>

" line numbers on and are relative
set number
set relativenumber
set cursorline 

" show statusline at bottom of screen
set laststatus=2

" make backspace more sensible
set backspace=indent,eol,start

" search settings
set ignorecase
set smartcase
set incsearch
set hlsearch " highlight matches
" then map double-Esc to remove highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" no noises
set noerrorbells visualbell t_vb=

" command completion
set wildmenu
set wildmode=longest:full,full

" tabs (window)
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" tabs
set tabstop=4
set softtabstop=4
set expandtab

" repmo: https://github.com/Houl/repmo-vim
" should be in ~/.vim/autoload
map <expr> j repmo#Key('gj', 'gk')|sunmap j
map <expr> k repmo#Key('gk', 'gj')|sunmap k
map <expr> ; repmo#LastKey(';')|sunmap ;
map <expr> , repmo#LastRevKey(',')|sunmap ,

" unlimited undos
if !isdirectory($HOME . "/.vim/undodir")
      call mkdir($HOME . "/.vim/undodir", "p")
endif
set undofile
set undodir=~/.vim/undodir
