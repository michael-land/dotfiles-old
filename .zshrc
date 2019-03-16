alias log-crontab='sudo cat /var/log/syslog | grep'
alias log-cron='sudo cat /var/log/syslog | grep'
alias log-mycron='sudo cat /var/log/syslog | grep "($(whoami))"'
alias start-pg=pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

##############################
#   [misc] - Variables
##############################
UTILS=$HOME/utils
LOG=$HOME/logs

##############################
#   [misc] - Functions
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

alias nu='npx npm-check -u'
alias nd='npm run dev'
alias nb='npm run build'
alias ni='npm install'
alias nid='npm install -D'
alias nig='npm install -g'
alias nr='npm run'
alias ns='npm start'
alias nt='npm test'
alias nl='npm list --global --depth=0'
alias nu='npm uninstall'
alias npm-reinstall='rm -rf node_modules && npm install'

nit() {  npm install $1 && npm install -D @types/$1 }

export NODE_REPL_HISTORY=~/.cache/node/.node_repl_history

export NVM_DIR="$UTILS/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"





##############################
#   [tool] - Git, ^g    reference - https://dev.to/robertcoopercode/using-aliases-to-speed-up-your-git-workflow-2f5a
##############################

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
plugins=(zsh-syntax-highlighting z zsh-autosuggestions)
ZSH_THEME=""
export ZSH=$UTILS/oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Custom Prompt
autoload -U promptinit; promptinit
prompt pure

##############################
#   [config] Zsh
##############################
HISTFILE=$UTILS/zsh/.zsh_history
ZDOTDIR=$UTILS/zsh
DEFAULT_USER="michael"
ISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

##############################
#   [config] Z
##############################
_Z_DATA=$UTILS/z/database

