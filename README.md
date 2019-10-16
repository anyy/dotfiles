Installation:
```sh
git clone git@github.com:gazelle0130/dotfiles.git
```

Create required directories:
```sh
mkdir -p ~/.config/nvim
mkdir -p ~/.ctags.d
```

Create symlinks:
```sh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zshenv ~/.zshenv
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.config/nvim/dein.toml ~/.config/nvim/dein.toml
ln -s ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s ~/dotfiles/.ctags.d/go.ctags ~/.ctags.d/go.ctags
```

KeyRepeats
```sh
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1
```
