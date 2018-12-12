#!/bin/bash
[ -f ~/.zshrc ] || ln -s $PWD/zshrc ~/.zshrc
[ -f ~/.tmux.conf ] || ln -s $PWD/tmux.conf ~/.tmux.conf
[ -f ~/.ctags ] || ln -s $PWD/ctags.conf ~/.ctags
[ -f ~/.editorconfig ] || ln -s $PWD/.editorconfig ~/.editorconfig
[ -f ~/.ptconfig.toml ] || ln -s $PWD/.ptconfig.toml ~/.ptconfig.toml
[ -f ~/.npmrc ] || ln -s $PWD/npmrc ~/.npmrc
[ -f ~/.yarnrc ] || ln -s $PWD/yarnrc ~/.yarnrc
[ -f ~/.gradle/init.gradle ] || mkdir -p ~/.gradle && ln -s $PWD/init.gradle ~/.gradle
[ -f ~/.config/kitty/kitty.conf ] || mkdir -p ~/.config/kitty && ln -s $PWD/kitty.conf ~/.config/kitty

if [ ! -f ~/.ssh/config ]; then
	mkdir -p ~/.ssh
	cp $PWD/ssh_config ~/.ssh/config
fi
