# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

PATH="$HOME/.nvm/versions/node/v10.12.0/bin/:$HOME/Projects/mvn/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/mysql/bin:$PATH"

ZSH_THEME="sunaku"
#eval `dircolors ~/.solarized/dircolors.256dark`
COMPLETION_WAITING_DOTS="true"

#PLUGINSSSSS
#
plugins=(vi-mode git)
source $ZSH/oh-my-zsh.sh

#Plugin conf
bindkey "jk" vi-cmd-mode

export EDITOR='vim'

export DISABLE_AUTO_TITLE="true"

#random aliases
alias vi=nvim
alias vim=nvim
alias t='todo.sh'
alias ssh='TERM=xterm ssh'
alias sudo='sudo env PATH=$PATH'
alias dark='SOLARIZED_THEME=dark'
alias light='SOLARIZED_THEME=light'

alias gap='git apply'
alias gra='git remote add'
alias grao='git remote add origin'
alias gups='git remote add upstream'

#[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

#Vim text objects!
#source $ZSH_CUSTOM/opp.zsh/opp.zsh
#source $ZSH_CUSTOM/opp.zsh/opp/*.zsh

alias heart='lynx gopher://gopher.meatspac.es'
alias gclo='git clone'
alias gds='git diff --stat'
alias gry='git log --author="Ryan Kois" --since="1 week ago" --pretty="oneline" --abbrev-commit --no-merges'
alias gryl='git log --author="Ryan Kois" --since="1 week ago" --pretty="medium" --no-merges'
alias vb='VBoxManage'
alias npms='npm install --save'
alias app='ssh -A -t root@192.168.57.102 "cd /data/gui/applianceUI; zsh"'
alias cpkey='scp ~/.ssh/id_rsa.pub root@192.168.57.102:.ssh/authorized_keys'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
