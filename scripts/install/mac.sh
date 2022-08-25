#!/usr/bin/env bash
# no .DS_store
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
defaults write com.apple.dashboard mcx-disabled -boolean YES

[ -d /usr/include ] || xcode-select --install

which brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

which tmux >/dev/null 2>&1 || brew install tmux

which rg >/dev/null 2>&1 || brew install ripgrep

function install_pandoc() {
  brew install basictex
  sudo chown -R `whoami` /usr/local/texlive
  tlmgr update --self --all
  tlmgr install collection-fontsrecommended upquote ulem biblatex
  brew install pandoc-citeproc
}
which pandoc >/dev/null 2>&1 || install_pandoc
