#!/bin/bash
which brew >/dev/null 2>&1 && exit
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
which brew >/dev/null 2>&1 || exit
git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
