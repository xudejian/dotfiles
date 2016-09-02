#!/bin/bash
[ -f ~/.zshrc ] || ln -s $PWD/zshrc ~/.zshrc
[ -f ~/.slate ] || ln -s $PWD/slate.conf ~/.slate
[ -f ~/.tmux.conf ] || ln -s $PWD/tmux.conf ~/.tmux.conf
[ -f ~/.ctags ] || ln -s $PWD/ctags.conf ~/.ctags
[ -f ~/.editorconfig ] || ln -s $PWD/.editorconfig ~/.editorconfig

if [ ! -f ~/.ssh/config ]; then
	mkdir -p ~/.ssh
	cp $PWD/ssh_config ~/.ssh/config
fi
