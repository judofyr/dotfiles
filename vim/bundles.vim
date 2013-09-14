set nocompatible
filetype off

" Use Pathogen for local plugins that are not on GitHub
execute pathogen#infect('local-bundle/{}')

" Use Vundle for everything else
call vundle#rc()

Bundle 'godlygeek/tabular'

" Sensible defaults
Bundle 'tpope/vim-sensible'

" Git
Bundle 'tpope/vim-fugitive'

Bundle 'tpope/vim-surround'

Bundle 'tpope/vim-rails'

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

" My little todo manager
Bundle 'judofyr/willdo'

filetype plugin indent on
