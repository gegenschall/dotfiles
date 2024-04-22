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

# Antigen and plugins
source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

#antigen bundle gcloud
antigen bundle yarn
antigen bundle fzf
antigen bundle autojump

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle greymd/docker-zsh-completion
antigen bundle chitoku-k/fzf-zsh-completions
antigen bundle cowboyd/zsh-volta --branch=v1

antigen theme romkatv/powerlevel10k

antigen apply

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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export VOLTA_FEATURE_PNPM=1
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
