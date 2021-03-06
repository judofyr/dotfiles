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

nmap <Right> :tabnext<cr>
nmap <Left> :tabprev<cr>

" Selects the recently pasted block
nmap gp `[v`]

" Default to having all folds unfolded
set foldlevel=99

set directory=/tmp//

let g:airline_left_sep=''
let g:airline_right_sep=''

source ~/.vim/python.vim

let s:local = expand($HOME . '/.vimrc.local')
if filereadable(s:local)
  exe ':source ' . s:local
end

