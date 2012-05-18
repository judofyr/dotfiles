" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Vundle
filetype on
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Rename'
Bundle 'Gundo'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'bbommarito/vim-slim'
Bundle 'tpope/vim-surround'
Bundle 'benmills/vimux'
Bundle 'pgr0ss/vimux-ruby-test'
Bundle 'JavaScript-Indent'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-pathogen'

call pathogen#infect('pathogen')

filetype plugin indent on

" Soft tabs are two spaces
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("gui_running")
  set guifont=Menlo:h14
end

set number

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Comma is the true leader
let mapleader = ","

" Easy navigation between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Space = shut up
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Gundo for history
map <Leader>g :GundoToggle<CR>

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" tell vim where to put its backup files
set backupdir=/tmp

" tell vim where to put swap files
set dir=/tmp

" Quickly get out of INSERT mode
imap jk <Esc>

runtime macros/matchit.vim
colorscheme molokai
cnoreabbrev W w
cnoremap %% <C-R>=expand('%:h').'/'<cr>
let NERDTreeHijackNetrw = 0

" Selects the recently pasted block
nmap gp `[v`]

let g:EasyMotion_leader_key = '<Leader>m'

let g:vimwiki_folding = 1
set foldlevelstart=20

let g:vimwiki_list = [{'path': '~/Google Drive/VimWiki', 'ext': '.txt'}]
let g:vimwiki_global_ext = 0

nmap <Leader>r :RunLastVimTmuxCommand<CR>

let g:ctrlp_switch_buffer = 2

