source ~/.vim/bundles.vim

" Can't live without line numbers
set number

" Sensible tabs
set et ts=2 sts=2 sw=2

" %% in command should insert the path
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

nmap <C-c> <Esc>

source ~/.vim/python.vim

