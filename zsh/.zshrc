# Path to your oh-my-zsh installation.
export ZSH=/home/max/.oh-my-zsh
export PATH=$PATH:~/.local/bin:~/.yarn/bin:~/.poetry/bin

ZSH_THEME="agnoster"
DEFAULT_USER="max"
DISABLE_AUTO_UPDATE="true"

plugins=(git archlinux autojump colorize django yarn virtualenv systemd sudo)

export EDITOR='vim'

export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
export DOCKERCLOUD_USER=gegenschall

if [ -e ~/.secrets ]; then
	source ~/.secrets
fi

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=37'

source $ZSH/oh-my-zsh.sh
source /usr/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ls=exa
alias sudo='sudo -E'
alias win10='sudo sh -c "efibootmgr -n 0 && systemctl reboot"'

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/home/max/.cache/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

