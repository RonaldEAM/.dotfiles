- setup macos preferences (todo: generate config file for this)

- install homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/ronaldeam/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ronaldeam/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- install firefox

```bash
brew install --cask firefox
```

- install kitty

```bash
brew install --cask kitty
```

- install raycast

```bash
brew install --cask raycast
```

- install neovim

```bash
brew install neovim
```

- install tmux

```bash
brew install tmux
```

- install git

```bash
brew install git
```

- install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

- install nodejs and tools

```bash
brew install volta
volta install node
volta install typescript
volta install typescript-language-server
volta install vscode-langservers-extracted
volta install trash
```

- install python

```bash
brew install pyenv
exec "$SHELL"
pyenv install 3.11
pyenv global 3.11
```

- download dotfiles

```bash
git clone https://github.com/RonaldEAM/.dotfiles.git .dotfiles
```

- install stow

```bash
brew install stow
```

- configure dotfiles

```bash
cd .dotfiles
stow kitty
rm ~/.zshrc
stow zsh
stow nvim
stow tmux
```

- Configure neovim

```bash
brew install ripgrep
brew install fd
brew install jq
cd
nvim --headless --noplugin -u ~/.dotfiles/nvim/.config/nvim/lua/plugins.lua -c "autocmd User PackerComplete quitall" -c "PackerSync"
```

Check that markdown-preview works, if not:
First make sure that yarn v1 is installed, and node version is 16, and execute

```bash
cd ~/.local/share/nvim/site/pack/packer/start/
cd markdown-preview.nvim
yarn install && yarn build
```

- configure raycast

```bash
cd ~/.dotfiles
cp raycast.rayconfig ~/
```

and manually import file in raycast

- install JetBrains Mono Nerd font

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

- install docker/kubernetes

```bash
brew install --cask rancher
```

- install dbeaver

```bash
brew install --cask dbeaver-community
```

- add new ssh key for github
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
  Add GitHub to the list of known hosts

```bash
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
```

- install flameshot

```
brew install --cask flameshot
```
