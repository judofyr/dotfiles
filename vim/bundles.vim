set nocompatible

" Use Pathogen for local plugins that are not on GitHub
execute pathogen#infect('local-bundle/{}')

" Use NeoBundle for everything else
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'godlygeek/tabular'

" Sensible defaults
NeoBundle 'tpope/vim-sensible'

" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'AndrewRadev/gapply.vim'

NeoBundle 'tpope/vim-surround'

NeoBundle 'tpope/vim-rails'

NeoBundle 'plasticboy/vim-markdown'

" Listing files
if version > 700
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'h1mesuke/unite-outline'
  NeoBundle 'Shougo/vimproc.vim', {
    \   'build': {
    \     'mac': 'make -f make_mac.mak',
    \     'unix': 'make -f make_unix.mak',
    \   },
    \ }
end

" Better status/tabbar
NeoBundle 'bling/vim-airline'

" Better scrolling
NeoBundle 'terryma/vim-smooth-scroll'

" Colors!
NeoBundle 'tomasr/molokai'

NeoBundle 'Rename'
NeoBundle 'ervandew/supertab'

" History
NeoBundle 'sjl/gundo.vim'

" My little todo manager
NeoBundle 'judofyr/willdo'

" Calendar
NeoBundle 'mattn/calendar-vim'

" Go
NeoBundle 'jnwhiteh/vim-golang'

" JavaScript
NeoBundle 'pangloss/vim-javascript'

" Ledger
NeoBundle 'ledger/vim-ledger'

" Rust
NeoBundle 'wting/rust.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

