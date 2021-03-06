source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"

zplug 'zsh-users/zsh-autosuggestions'

zplug "zsh-users/zsh-history-substring-search"

zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"

zplug "zsh-users/zsh-syntax-highlighting"

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

if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
fi

# direnv
eval "$(direnv hook zsh)"

# turn off beep
setopt no_beep

# history
setopt extended_history
setopt hist_ignore_dups

# keybinds
bindkey -e

# ignore a word beginning with '#' as a comment
setopt INTERACTIVE_COMMENTS

# aliases
if [ -f ~/dotfiles/.aliases ]; then
    source ~/dotfiles/.aliases
fi
