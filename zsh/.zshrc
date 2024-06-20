# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/opt/homebrew/opt/openjdk/bin:~/.local/bin:/opt/homebrew/bin:$PATH

export EDITOR='nvim'
export COLUMNS="120"
export DISABLE_AUTO_TITLE="true"

HISTSIZE=10000000
SAVEHIST=10000000

autoload -Uz compinit && compinit

source $HOME/.local/share/wezterm/shell-integration.sh

# antidote and plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
source <(antidote init)

antidote bundle ohmyzsh/ohmyzsh path:lib
antidote bundle ohmyzsh/ohmyzsh path:plugins/yarn
antidote bundle ohmyzsh/ohmyzsh path:plugins/fzf
antidote bundle ohmyzsh/ohmyzsh path:plugins/autojump
# antidote bundle ohmyzsh/ohmyzsh path:plugins/docker
# antidote bundle ohmyzsh/ohmyzsh path:plugins/docker-compose

antidote bundle zsh-users/zsh-syntax-highlighting
antidote bundle zsh-users/zsh-autosuggestions
antidote bundle zsh-users/zsh-completions
antidote bundle greymd/docker-zsh-completion
antidote bundle chitoku-k/fzf-zsh-completions
antidote bundle cowboyd/zsh-volta branch:v1

antidote bundle romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Make less show pretty colors for things
export LESSOPEN="| /opt/homebrew/bin/src-hilite-lesspipe.sh %s"
export LESS="-R"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#586e75,underline"

# My alias definitions
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ls=eza
alias sudo='sudo -E'
alias vim=nvim

bindkey -M vicmd v edit-command-line

if [ -e ~/.secrets ]; then
  while read line; do
    export $line
  done <~/.secrets
fi

export VOLTA_FEATURE_PNPM=1
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
