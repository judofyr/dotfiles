source ~/.vim/bundles.vim

" Can't live without line numbers
set number

" Sensible tabs
set et ts=2 sts=2 sw=2

" %% in command should insert the path
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" Space = shut up
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Just alias Ctrl-C to Escape. No one cares about the difference
nmap <C-c> <Esc>

" Selects the recently pasted block
nmap gp `[v`]

let g:airline_left_sep=''
let g:airline_right_sep=''

" Easy navigation between windows
if exists('$TMUX')
  source ~/.vim/tmux.vim
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

source ~/.vim/python.vim

let s:local = expand($HOME . '/.vimrc.local')
if filereadable(s:local)
  exe ':source ' . s:local
end

