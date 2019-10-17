# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
GOPATH=$HOME/go
GOROOT=/usr/local/opt/go/libexec

PATH="/Users/ryank/bin:/usr/local/opt/mongodb-community@4.0/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/mysql/bin:/Users/ryank/go/bin:$GOROOT/bin:$PATH"

ZSH_THEME="sunaku"
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

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
[-f ~/.job_stuffrc.zsh] && . ~/.job_stuffrc.zsh
