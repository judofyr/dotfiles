function! TmuxOrSplitSwitch(wincmd, tmuxdir)
  " Try to switch pane
  let previous_winnr = winnr()
  execute "wincmd " . a:wincmd
  " If we're still in the same pane, switch tmux pane
  if previous_winnr == winnr()
    call system("sh -c 'tmux select-pane -" . a:tmuxdir . "' &")
  endif
endfunction

" Add `vim` to the title so tmux can pick it up
let previous_title = substitute(system("tmux display-message -p '#T'"), '\n', '', '')
let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

" Keybindings
nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>

