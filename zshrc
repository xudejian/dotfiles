if [[ ! -f $HOME/.antigen.zsh ]]; then
  curl -L git.io/antigen > $HOME/.antigen.zsh
fi
source $HOME/.antigen.zsh

antigen init $HOME/.antigenrc

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GOPATH=$HOME/go
export PATH=/usr/local/sbin:/usr/local/bin:$PATH:$GOPATH/bin:$HOME/src/dotfiles/bin:$HOME/.local/bin:$HOME/.cargo/bin

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_ROOT=/usr/local/share/android-ndk
export ANDROID_HOME=$ANDROID_SDK_ROOT

export PATH=$PATH:/Library/TeX/texbin:$ANDROID_HOME/platform-tools:/usr/local/share/flutter/bin:$ANDROID_NDK_ROOT

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.vim/pack/color/start/gruvbox/gruvbox_256palette.sh

alias rg='/usr/local/bin/rg -S'
alias rm='trash'

function vi() {
       if [[ $# -eq 1 ]]; then
               if [[ -f "$1" ]]; then
                       vim -g --servername xxx --remote-tab-silent "$@"
               else
                       OBJ=$(fzf -q "$1")
                       if [[ "x$OBJ" == "x" ]]; then
                               OBJ=$1
                       fi
                       vim -g --servername xxx --remote-tab-silent $OBJ
               fi
       else
               vim -g --servername xxx --remote-tab-silent "$@"
       fi
}
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
