#!/usr/bin/env bash

[ -f ~/.tmux.conf ] || ln -s $PWD/tmux.conf ~/.tmux.conf
[ -f ~/.ctags ] || ln -s $PWD/ctags.conf ~/.ctags
[ -f ~/ctags.d ] || ln -s $PWD/ctags.d ~/.ctags.d
[ -f ~/.editorconfig ] || ln -s $PWD/.editorconfig ~/.editorconfig
[ -f ~/.npmrc ] || ln -s $PWD/npmrc ~/.npmrc
[ -f ~/.yarnrc ] || ln -s $PWD/yarnrc ~/.yarnrc
[ -f ~/.gradle/init.gradle ] || mkdir -p ~/.gradle && ln -s $PWD/init.gradle ~/.gradle
[ -f ~/.config/kitty/kitty.conf ] || mkdir -p ~/.config/kitty && ln -s $PWD/kitty.conf ~/.config/kitty

if [ ! -f ~/.ssh/config ]; then
	mkdir -p ~/.ssh
	cp $PWD/ssh_config ~/.ssh/config
fi

[ -d ~/.oh-my-zsh ] || git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -f ~/.zshrc ] || chsh -s /bin/zsh
[ -f ~/.zshrc ] || ln -s `pwd`/zshrc ~/.zshrc

[ -f $PWD/gitignore_global ] && git config --global core.excludesfile $PWD/gitignore_global

git config --global core.ignorecase false
git config --global user.email 'xudejian2008@gmail.com'
git config --global user.name 'xudejian'

git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.ui auto
git config --global color.grep auto

git config --global svn.rmdir true

git config --global branch.autosetupmerge always
git config --global branch.autosetuprebase always
