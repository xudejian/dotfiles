#!/bin/bash
[ -f ~/.zshrc ] || ln -s $PWD/zshrc ~/.zshrc
[ -f ~/.slate ] || ln -s $PWD/slate.conf ~/.slate
