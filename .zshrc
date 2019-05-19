##############################
#   [misc] - Variables
##############################
CONFIG_DIR=$HOME/.config
ZDOTDIR=$CONFIG_DIR/zsh
DEFAULT_USER="michael"
ISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HISTFILE=$ZDOTDIR/.zsh_history


############################## [misc] - Functions
##############################
mg () { mkdir "$@" && cd "$@" ; }

##############################
#   [lang] - Python
##############################

alias djr='python manage.py runserver'
alias djs='python manage.py shell'
alias djmm='python manage.py makemigrations'
alias djmg='python manage.py migrate'
alias open-django="python -c \"import os; import django; os.system('open %s'% django.__path__[0])\""

##############################
#   [lang] - Node
##############################
export NODE_REPL_HISTORY=~/.cache/node/.node_repl_history

export NVM_DIR="$CONFIG_DIR/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"





###############################
#   [tool] - Git
###############################

alias gaa="git add -A"
alias gc="git checkout"
alias gca="git commit --amend --no-edit"
alias gcaa="git add --all && git commit --amend --no-edit"
alias gcz="git cz"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit"
alias gnope="git checkout ."
alias gpull="git pull"
alias gpush="git push"
alias gs="git status"
alias gundo="git reset --soft HEAD^"
alias gwait="git reset HEAD"

##############################
#   [other]
##############################
alias log-crontab='sudo cat /var/log/syslog | grep'
alias log-cron='sudo cat /var/log/syslog | grep'
alias log-mycron='sudo cat /var/log/syslog | grep "($(whoami))"'
alias start-pg=pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

alias t="tree"
alias tp="tree --prune"
alias e="code"
alias ez="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias fz="cat ~/.zshrc | grep"
alias sa="source activate"
alias sd="source deactivate"
alias lf="ls -d */"

##############################
#   [config] oh-my-zsh
##############################
export ZSH=$CONFIG_DIR/oh-my-zsh
ZSH_THEME=""
plugins=( z zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh
# Custom Prompt
autoload -U promptinit; promptinit
prompt pure

##############################
#   [config] Zsh
##############################

##############################
#   [config] Z
##############################
_Z_DATA=$CONFIG_DIR/z/database

##############################
#   PATH
##############################
export PATH="$PATH:$(yarn global bin)"
export PATH="$HOME/.local/bin:$PATH"
