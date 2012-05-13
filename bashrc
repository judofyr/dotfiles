alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gl="git log"
alias gph="git push heroku"

alias release="mkdir release && git clone . release && cd release && rake"
alias released="[[ `pwd` =~ /release$ ]] && cd .. && rm -rf release"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export PATH="$HOME/bin:$PATH"

gitprompt() {
  PS1="\[\e[0;31m\]\W$(__git_ps1 " \[\e[1;31m\](%s)") \$ \[\e[m\]"
}
PROMPT_COMMAND=gitprompt 

if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm
fi

if [[ -s $HOME/.perlbrew/etc/bashrc ]]; then
  source $HOME/.perlbrew/etc/bashrc
fi
  
function vim() {
  if [ -d "$1" ]; then
    local dir=$(printf %q "$1")
    command mvim -v --cmd ":cd $dir" "$@"
  else
    command mvim -v "$@"
  fi
}

alias e="vim"
alias vi="vim"
export EDITOR="mvim -v"

alias ledger="~/Documents/Ledger/ledger -f ~/Documents/Ledger/all.dat"


export NODE_PATH="/usr/local/lib/node"

