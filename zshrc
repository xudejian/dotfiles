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
plugins=(git tmux)

# Customize to your needs...
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GOPATH=$HOME/go
export GOPROXY=https://goproxy.io

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/src/dotfiles/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/.cargo/bin

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT

export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub

export PATH=$PATH:$ANDROID_HOME/platform-tools:/usr/local/share/flutter/bin

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
alias v='vi'

[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
