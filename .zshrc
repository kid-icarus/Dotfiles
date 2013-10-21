# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

PATH=/Users/ryankois/.rvm/gems/ruby-1.9.3-p194/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/php5/bin:/Users/ryankois/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

#export ZSH_TMUX_AUTOSTART="true"
#export ZSH_TMUX_AUTOCONNECT="true"

# Set name of the theme to load.
ZSH_THEME="agnoster"
#eval `dircolors ~/solarized/dircolors.256dark`
COMPLETION_WAITING_DOTS="true"

#PLUGINSSSSS
plugins=(colored-man tmux tmuxinator drush git vi-mode fasd rvm rake ruby composer vagrant brew sprunge cloudapp)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/site-contrib/powerline.zsh

#Plugin conf
bindkey "jk" vi-cmd-mode

EDITOR='vim'

#Random crap
[[ -s $HOME/.tmuxinator/scripts/tmuxinator  ]] && source $HOME/.tmuxinator/scripts/tmuxinator
#source $HOME/t/etc/t-completion.zsh

export DISABLE_AUTO_TITLE="true"

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

#random aliases
alias drupalcs='phpcs --standard=/Users/ryankois/.drush/coder/coder_sniffer/Drupal/ruleset.xml --extensions=php,module,inc,install,test,profile,theme'
alias vi=vim
alias t='todo.sh'
alias d4='php /Users/ryankois/drush4/drush.php'
alias ssh='TERM=xterm ssh'
alias sudo='sudo env PATH=$PATH'
alias phpini='vim /usr/local/php5/lib/php.ini'
alias dark='SOLARIZED_THEME=dark'
alias light='SOLARIZED_THEME=light'

#Vagrant stuff
alias vu="vagrant up"
alias vd="vagrant destroy"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vst="vagrant status"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vssh='TERM=xterm vagrant ssh'
alias dsync="drush sql-sync --structure-tables-key=common"
alias camp="php ~/Project/camp/src/camp.php"
alias gap='git apply'

#Pomodoro stuff
alias p='pomo'
alias pls='pomo ls'
alias plsa='pomo ls --all'
alias pa='pomo add'
alias prm='pomo rm'
alias pinc='pomo incomplete'
alias psta='pomo start'
