#!/bin/bash
which brew > /dev/null 2>&1 && exit
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
