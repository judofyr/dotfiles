set nocompatible

" Use vim-plug for everything else
call plug#begin('~/.vim/bundle')

Plug 'godlygeek/tabular'

" Sensible defaults
Plug 'tpope/vim-sensible'

" Git
Plug 'tpope/vim-fugitive'
Plug 'AndrewRadev/gapply.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-rails'

Plug 'tpope/vim-markdown'

" Better status/tabbar
Plug 'bling/vim-airline'

" Colors!
Plug 'tomasr/molokai'

Plug 'Rename'
Plug 'ervandew/supertab'

" History
Plug 'sjl/gundo.vim'

" Toml
Plug 'cespare/vim-toml'

call plug#end()

