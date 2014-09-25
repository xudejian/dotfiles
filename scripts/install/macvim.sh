#!/bin/bash
#require brew
which mvim >/dev/null 2>&1 && exit
brew install macvim --override-system-vim --with-lua --with-luajit
brew linkapps
