# Sebassmtz.Dots

## Description

This repository contains customized configurations for the Neovim development environment, including specific plugins and keymaps to enhance productivity. It makes use of [LazyVim](https://github.com/LazyVim/LazyVim) as a preconfigured set of plugins and settings to simplify the use of Neovim.

## Previous Steps

### Install WSL (`https://learn.microsoft.com/en-us/windows/wsl/install`)

```bash
wsl --install
wsl --set-default-version 2
```

### Install HomeBrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Include HomeBrew Path Bash
```bash
Change 'sebas' with the device username

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sebas/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
### Install build-essencials for LINUX
```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential
```

### Install Libs

```bash
brew install chezmoi 
brew install git
brew install nvim
brew install antidote
brew install lsd bat
brew install neofetch
```

### Install ZSH

```bash
brew install zsh

// set as default:

which zsh
// this will return a path, let‘s call it zshPath

// add it as an available shell
echo zshPath | sudo tee -a /etc/shells

// set it as default
sudo chsh -s zshPath
```

### Install Oh-My-ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Include HomeBrew Path ZSH
```bash
Change 'sebas' with the device username

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sebas/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### Install following dependencies
```bash
brew install gcc
brew install fzf
brew install fd
brew install ripgrep
```

### Install Font Iosevka Nerd

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/IosevkaTerm.zip

unzip IosevkaTerm.zip -d IosevkaTerm

// Local
cp -r IosevkaTerm ~/.local/share/fonts/

//Root
sudo cp -r IosevkaTerm /usr/share/fonts/



```


### Install Starship Prompt:

```bash
curl -sS https://starship.rs/install.sh | sh
```


