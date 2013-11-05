#!/bin/sh
git config --global alias.ctags '!.git/hooks/ctags'
git config --global alias.vimodify 'for i in $(git ls-files -m 2>/dev/null);do vi $i;break;done'

