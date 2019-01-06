" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

"set runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'vim-syntastic/syntastic' "python syntax checker
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree' "file browser
Plugin 'dag/vim2hs' "haskell support
Plugin 'easymotion/vim-easymotion' "lexical motions in vim
Plugin 'jcf/vim-latex' "latex integration
Plugin 'ervandew/supertab' "tab completion
"PLUGINS GO HERE


call vundle#end()
filetype plugin indent on

"open file browser automatically
"au vimenter * NERDTree
"open file browser when no file given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

"simpler split navigation shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"Line numbers on
set nu

"Set softtabstop
"set softtabstop=4
"python settings
"au BufNewFile,BufRead *.py
"    \ set textwidth=79 tabstop=8 softtabstop=0 noexpandtab shiftwidth=4 smarttab
"    "\ set softtabstop=0
"    "\ set shiftwidth=4
"    \ set noexpandtab
"    "\ set autoindent
"    \ set fileformat=unix
"    \ let python_highlight_all=1
"    \ syntax on

"haskell settings
au BufNewFile,BufRead *.hs
    \ set tabstop=4 shiftwidth=4 expandtab
"au BufEnter *.hs compiler ghc

"au BufRead,bufNewFile *.py,*.pyw,*.c,*.hs match BadWhitespace /\s\+$/

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"Backups in vimtmp, not main dir
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

"colorscheme
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

" VIMTEX:

" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat='pdf'
"
" OPTIONAL: turn off <++>?
let g:Imap_UsePlaceHolders = 0


"line numbers
set number
set relativenumber

" SYNTASTIC:

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

" Remove highlighting from search with <CR>
nnoremap <CR> :noh<CR>
