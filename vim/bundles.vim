set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Manage Vundle with Vundle
Bundle 'gmarik/vundle'

Bundle 'godlygeek/tabular'

" Sensible defaults
Bundle 'tpope/vim-sensible'

" Git
Bundle 'tpope/vim-fugitive'

Bundle 'tpope/vim-surround'

" Listing files
if version > 700
  Bundle 'Shougo/unite.vim'
end

" Better status/tabbar
Bundle 'bling/vim-airline'

" Colors!
Bundle 'tomasr/molokai'

Bundle 'Rename'
Bundle 'ervandew/supertab'

" History
Bundle 'sjl/gundo.vim'

filetype plugin indent on
