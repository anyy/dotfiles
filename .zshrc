source ~/.zplug/init.zsh

# enhancd config
export ENHANCD_COMMAND=ed
export ENHANCD_FILTER=ENHANCD_FILTER=fzy:fzf:peco

zplug "yous/vanilli.sh"

zplug "zsh-users/zsh-completions"

zplug 'zsh-users/zsh-autosuggestions'

zplug "yous/lime"

zplug "zsh-users/zsh-syntax-highlighting"

zplug "zsh-users/zsh-history-substring-search"

zplug "rupa/z", use:"*.sh"

zplug "b4b4r07/enhancd", use:init.sh

zplug "plugins/git",   from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

export LIME_DIR_DISPLAY_COMPONENTS=2

if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
fi

export CLICOLOR=1

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export GO111MODULE=on

# direnv
eval "$(direnv hook zsh)"

# goenv
# export PATH="$HOME/.goenv/bin:$PATH"
# eval "$(goenv init -)"

# alias
alias cat='bat'
