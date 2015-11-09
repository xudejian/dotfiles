#!/bin/bash
which go >/dev/null 2>&1 && exit
brew install go
[ -f ~/Library/LaunchAgents/godoc.plist ] || ln -s $PWD/godoc.plist ~/Library/LaunchAgents
