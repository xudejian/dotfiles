ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"
ZSH_TMUX_AUTOSTART=true
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirhistory jsontools osx tmux)

# Customize to your needs...
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/sbin:/usr/local/bin:$PATH:$GOPATH/bin:$HOME/src/dotfiles/bin:$HOME/.local/bin:$HOME/.cargo/bin:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_ROOT=/usr/local/share/android-ndk
export ANDROID_HOME=$ANDROID_SDK_ROOT

export PATH=$PATH:/Library/TeX/texbin:$ANDROID_HOME/platform-tools:/usr/local/share/flutter/bin:$ANDROID_NDK_ROOT

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
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
