execute pathogen#infect()

filetype plugin indent on
syntax on	

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=50 columns=90
endif

:set number
:set relativenumber

" :set lines=40 columns=110

:colorscheme darkblue

:set tabstop=4 shiftwidth=4 expandtab smartindent smartindent

" Move vim extra files
:set directory=$HOME/vimfiles/swapfiles//
:set backupdir=$HOME/vimfiles/backupfiles//

" Activate all the handy Windows key-bindings we're used to.
source $VIMRUNTIME/mswin.vim

" Have gvim behave properly on Windows.
behave mswin

" Use unicode/utf-8 encoding by default for keyboard, display and files.
set encoding=utf-8

" Have .config files behave like html
au BufRead,BufNewFile *.config set filetype=xml

" FormatJSON command
com! Formatjson %!python -m json.tool

" Syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
