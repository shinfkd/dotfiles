# alias
alias ll='ls -alG'
alias be='bundle exec'
alias bi='bundle install'
alias rc='bundle exec rails console'
alias rr='bundle exec rake routes'
alias bedm='bundle exec rake db:migrate'

# git
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# display
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[36m\][\u@ \W$(__git_ps1 " (%s)")]\[\e[0m\]\\$ '
export LSCOLORS=gxfxcxdxbxegedabagacad

# peco
alias pssh="grep -w 'Host' ~/.ssh/config | peco | cut -f 2 -d ' ' | xargs -o -n 1 ssh"
alias pps="ps aux | peco"

# history
export PROMPT_COMMAND='history -a; history -c; history -r'
shopt -s histappend
export HITSIZE=10000
export HISTCONTROL=ignoredups
