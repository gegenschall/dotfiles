export PATH=/opt/homebrew/opt/openjdk/bin:~/.local/bin:/opt/homebrew/bin:$PATH
export PATH=~/.local/share/bob/nvim-bin:$PATH

export EDITOR='nvim'
export COLUMNS="120"
export DISABLE_AUTO_TITLE="true"
export DO_NOT_TRACK=1

HISTSIZE=10000000
SAVEHIST=10000000

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit && compinit

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

source $HOME/.local/share/wezterm/shell-integration.sh
source $HOME/.local/share/pnpm/autocomplete.zsh
source $HOME/.local/share/docker/autocomplete.zsh

# antidote and plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
source <(antidote init)

antidote bundle ohmyzsh/ohmyzsh path:lib
antidote bundle ohmyzsh/ohmyzsh path:plugins/yarn
antidote bundle ohmyzsh/ohmyzsh path:plugins/fzf

antidote bundle zsh-users/zsh-syntax-highlighting
antidote bundle zsh-users/zsh-autosuggestions
antidote bundle zsh-users/zsh-completions
antidote bundle greymd/docker-zsh-completion
antidote bundle chitoku-k/fzf-zsh-completions
antidote bundle cowboyd/zsh-volta branch:v1

# Make less show pretty colors for things
export LESSOPEN="| /opt/homebrew/bin/src-hilite-lesspipe.sh %s"
export LESS="-R"

# My alias definitions
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ls=eza
alias sudo='sudo -E'
alias vim=nvim
alias j=z
alias staplehorse='pwgen -cnyB 16 4'

bindkey -M vicmd v edit-command-line

if [ -e ~/.secrets ]; then
  while read line; do
    export $line
  done <~/.secrets
fi

eval "$(oh-my-posh init zsh --config ~/.local/share/oh-my-posh/tokyonight_moon.toml)"
eval "$(zoxide init zsh)"

export VOLTA_FEATURE_PNPM=1
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
