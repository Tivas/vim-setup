" execute pathogen#infect()

filetype plugin indent on
syntax on	

:set number
:set relativenumber

" :set lines=40 columns=110

:colorscheme darkblue

:set tabstop=4 shiftwidth=4 expandtab smartindent smartindent

" Move vim extra files
:set directory=$HOME/.vim/swapfiles//
:set backupdir=$HOME/.vim/backupfiles//

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
