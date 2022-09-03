# Path to your oh-my-zsh configuration.
autoload -Uz compinit
compinit
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=false
export NVM_NO_USE=true
ZSH=$HOME/.oh-my-zsh
GOPATH=$HOME/go
GOROOT=/usr/local/opt/go/libexec

PATH="/Users/ryank/bin:/Users/ryank/mongodb/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/mysql/bin:/Users/ryank/go/bin:$GOROOT/bin:$PATH"
DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_THEME="cypher"
COMPLETION_WAITING_DOTS="true"

#PLUGINS
plugins=(vi-mode git)
source $ZSH/oh-my-zsh.sh

#Plugin conf
bindkey "jk" vi-cmd-mode
export EDITOR='nvim'
export DISABLE_AUTO_TITLE="true"

#random aliases
alias vi=nvim
alias vim=nvim
alias sudo='sudo env PATH=$PATH'

#git aliases
alias gap='git apply'
alias gra='git remote add'
alias grao='git remote add origin'
alias gups='git remote add upstream'
alias gds='git diff --stat'
alias gry='git log --author="Ryan Kois" --since="1 week ago" --pretty="oneline" --abbrev-commit --no-merges'
alias gryl='git log --author="Ryan Kois" --since="1 week ago" --pretty="medium" --no-merges'

alias npms='npm install --save'
alias ws='open -a Webstorm .'

# fuzzy finder config
export FZF_DEFAULT_COMMAND='fd --type f'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

[ -f ~/.job_stuffrc.zsh ] && . ~/.job_stuffrc.zsh
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
alias gpp='git config --local user.email ryan.kois@gmail.com'
#
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
