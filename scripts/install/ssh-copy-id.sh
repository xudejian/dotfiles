#!/bin/bash
which ssh-copy-id >/dev/null 2>&1 && exit
brew install ssh-copy-id
