#!/bin/bash
DIR=`pwd`
[ -f $DIR/gitignore_global ] && git config --global core.excludesfile $DIR/gitignore_global

[ -f $DIR/git_template ] && git config --global init.templatedir ~/src/dotfiles/git_template

git config --global user.email 'xudejian2008@gmail.com'
git config --global user.name 'Dejian Xu'

git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.ui auto
git config --global color.grep auto

git config --global alias.ctags '!.git/hooks/ctags'
git config --global alias.vimodify 'for i in $(git ls-files -m 2>/dev/null);do vi $i;break;done'

git config --global svn.rmdir true

git config --global branch.autosetuprebase always
