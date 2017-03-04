ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"
DISABLE_UPDATE_PROMPT=true

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
plugins=(git osx colored-man golang tmux docker)

# Customize to your needs...
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:/usr/local/sbin:node_modules/.bin:$PATH
export PATH=$HOME/src/dotfiles/bin:$PATH

export GOPATH=$HOME/go
[ -z $GOROOT ] && export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$PATH:$GOROOT/bin

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export MONO_GAC_PREFIX="/usr/local"

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

export http_proxy="http://192.168.1.88:8118"
export https_proxy=$http_proxy
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias rm=trash

alias vi='gvim --remote-tab-silent'
gag () {
  pt "$@" `git rev-parse --show-toplevel 2>/dev/null`
}

export DEPOT_TOOLS_UPDATE=0
export PATH=$PATH:$HOME/bin/depot_tools
