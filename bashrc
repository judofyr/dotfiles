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

if [[ -s /Users/magnus/.rvm/scripts/rvm ]] ; then source /Users/magnus/.rvm/scripts/rvm ; fi
  
function mvim() {
  if [ -d "$1" ]; then
    local dir=$(printf %q "$1")
    command mvim --cmd ":cd $dir" "$@"
  else
    command mvim "$@"
  fi
}

alias mate="mvim"
alias e="mvim"

alias ledger-magnus="~/Documents/Ledger/ledger -f ~/Documents/Ledger/magnus.dat"
alias ledger-janne="~/Documents/Ledger/ledger -f ~/Documents/Ledger/janne.dat"
alias ledger-common="~/Documents/Ledger/ledger -f ~/Documents/Ledger/common.dat"

