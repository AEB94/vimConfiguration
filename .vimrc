"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
set t_Co=256

" Specify a directory for plugins
call plug#begin('~\.vim\plugged')
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Color
Plug 'tomasr/molokai'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************
" latex
" Plug 'lervag/vimtex'

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'


" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
"if filereadable(expand("~/.vimrc.local.bundles"))
"  source ~/.vimrc.local.bundles
"endif
call plug#end()


"*****************************************************************************
""" Abbreviations
"*****************************************************************************
""" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq 
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall  

set nocompatible
"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

filetype plugin on
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set nu
set ignorecase
"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" FINDING FILES:
" Search down into subfolders
" Provides tab-completition for all file-related tasks
set path+=**

" Display all matching files when we tab complite 
set wildmenu

" NOW WE CAN:
" - HIT tab to :find by partial match
" - Use * to make it fuzzy

" TAG JUMPING:
" Create the `tags` file
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - User g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" AUTOCOMPLITE:
" The good stuff is documented in |ins-completition|

" HIGHLIGHTS:
" - ^x^n for JUST this file
"   ^x^f for filenames (works with our path trick!)
"   ^x^] for tags only
"   ^n for anything specifed by the 'complete' options

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSKING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_alttv=1         " open slits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

:let g:session_autosave = 'no'
