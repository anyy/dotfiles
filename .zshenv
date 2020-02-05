# enhancd config
export ENHANCD_COMMAND=ed
export ENHANCD_FILTER=fzf

# ls color
export CLICOLOR=1

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export GO111MODULE=on

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"

# bat
export BAT_THEME="TwoDark"

# zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=103"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# history
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# Editor
export EDITOR="nvim -u $HOME/.config/nvim/init.vim"
export GIT_EDITOR="${EDITOR}"
