#!/bin/bash
#require node npm
which coffee >/dev/null 2>&1 && exit
npm install -g coffee-script
