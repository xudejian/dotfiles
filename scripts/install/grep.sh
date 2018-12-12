#!/bin/bash
#require brew
which pt >/dev/null 2>&1 && exit || brew install pt
which rg >/dev/null 2>&1 && exit || brew install ripgrep
