#!/bin/bash
#require brew
which rg >/dev/null 2>&1 && exit || brew install ripgrep
which fd >/dev/null 2>&1 && exit || brew install fd
