" =====================================
" Vim plugin configuration
" =====================================
"
" Filetype off is required by vundle.
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Load the rest of the Plugins
runtime plugins.vundle

" All Plugins must be added before the following ling
call vundle#end()           " Required
filetype plugin indent on   " Required
