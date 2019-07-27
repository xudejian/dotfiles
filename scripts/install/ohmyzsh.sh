#!/bin/bash
[ -d ~/.oh-my-zsh ] || git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -f ~/.zshrc ] || chsh -s /bin/zsh
[ -f ~/.zshrc ] || ln -s `pwd`/zshrc ~/.zshrc
