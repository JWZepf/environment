# Environment Setup Instructions
## 1. Packages to Install
- neovim
- tree
- terminator (Linux)
- iTerm2 (Mac)
- zsh

## 2. Set Up zsh
- Make `zsh` the default shell
```
chsh -s $(which zsh)
```

- Download oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Copy zsh config file
```
cp zshrc ~/.zshrc
source ~/.zshrc
```

## Set up NeoVim
- Copy NeoVim config to `~/.config`
```
cp -r nvim ~/.config/nvim
```

- Install [vim-plug](https://github.com/junegunn/vim-plug)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- Install plugins
```
nvim
:PlugInstall
```

## Set up Terminal
### Terminator
- Copy Terminator config to proper location
```
cp terminator/terminator_config ~/.config/terminator/config --create-dirs
```

### iTerm2
- Download iTerm2 and import the necessary profiles
