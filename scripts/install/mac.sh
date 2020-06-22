#!/usr/bin/env bash
# no .DS_store
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
defaults write com.apple.dashboard mcx-disabled -boolean YES

[ -d /usr/include ] || xcode-select --install

which brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git

which mvim >/dev/null 2>&1 || brew install pygments macvim
which ssh-copy-id >/dev/null 2>&1 || brew install ssh-copy-id
which tmux >/dev/null 2>&1 || brew install tmux

which rg >/dev/null 2>&1 || brew install ripgrep
which fd >/dev/null 2>&1 || brew install fd
which node >/dev/null 2>&1 || brew install node

which go >/dev/null 2>&1 || brew install go
