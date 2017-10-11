# Path to your oh-my-zsh installation.
export ZSH=/home/max/.oh-my-zsh
export PATH=$PATH:~/.local/bin

ZSH_THEME="agnoster"
DEFAULT_USER="max"

plugins=(git archlinux autojump colorize django virtualenvwrapper virtualenv systemd sudo)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

alias grep='grep --color=auto'
alias diff='diff --color=auto'
#alias ls='ls --color=auto'
alias ls=exa
alias sudo='sudo -E'

export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

export DOCKERCLOUD_USER=gegenschall

if [ -e ~/.secrets ]; then
	source ~/.secrets
fi
