# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/php5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ryankois/.rvm/bin:/Users/ryankois/.rvm/gems/ruby-1.9.3-p194/bin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#eval `dircolors ~/solarized/dircolors.256dark`
eval `dircolors ~/solarized/dircolors.256dark`
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(drush git vi-mode autojump rvm rake ruby composer vagrant brew sprunge cloudapp)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/usr/local/php5/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#random aliases
alias drupalcs='phpcs --standard=/Users/ryankois/.drush/coder/coder_sniffer/Drupal/ruleset.xml --extensions=php,module,inc,install,test,profile,theme'
alias t='todo.sh'
# alias j='autojump'

# Colors I'm liking
# export CLICOLOR=1
# export LSCOLORS=Exfxcxdxbxegedabagacad

# Some crazy color stuff
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n GRC ]
then
    alias colourify="$GRC -es --colour=auto"
    alias configure='colourify ./configure'
    alias diff='colourify diff'
    alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias as='colourify as'
    alias gas='colourify gas'
    alias ld='colourify ld'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias traceroute='colourify /usr/sbin/traceroute'
fi
alias d4='php /Users/ryankois/drush4/drush.php'
alias ssh='TERM=xterm ssh'
alias sudo='sudo env PATH=$PATH'
alias phpini='vim /usr/local/php5/lib/php.ini'

bindkey "jj" vi-cmd-mode
alias vssh='TERM=xterm vagrant ssh'

EDITOR='vim'
[[ -s $HOME/.tmuxinator/scripts/tmuxinator  ]] && source $HOME/.tmuxinator/scripts/tmuxinator
