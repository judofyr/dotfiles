set nocompatible

" Use Pathogen for local plugins that are not on GitHub
execute pathogen#infect('local-bundle/{}')

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

Plug 'plasticboy/vim-markdown'

" Listing files
if version > 700
  Plug 'Shougo/unite.vim'
  Plug 'h1mesuke/unite-outline'

  if has('mac')
    let g:vimproc_do = 'make -f make_mac.mak'
  else
    let g:vimproc_do = 'make -f make_unix.mak'
  endif

  Plug 'Shougo/vimproc.vim', { 'do': g:vimproc_do }
end

" Better status/tabbar
Plug 'bling/vim-airline'

" Colors!
Plug 'tomasr/molokai'

Plug 'Rename'
Plug 'ervandew/supertab'

" History
Plug 'sjl/gundo.vim'

" My little todo manager
Plug 'judofyr/willdo'

" Calendar
Plug 'mattn/calendar-vim'

" Go
Plug 'jnwhiteh/vim-golang'

" JavaScript
Plug 'pangloss/vim-javascript'

" Ledger
Plug 'ledger/vim-ledger'

" Rust
Plug 'wting/rust.vim'

call plug#end()

