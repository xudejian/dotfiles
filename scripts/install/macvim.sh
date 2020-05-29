#!/bin/bash
#require brew
which mvim >/dev/null 2>&1 && exit
[ -d /usr/include ] || xcode-select --install
brew install pygments macvim
brew linkapps
