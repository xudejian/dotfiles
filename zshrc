ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"

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
plugins=(git osx colored-man)

# Customize to your needs...
export CC=clang
export CFLAGS='-I/usr/include -I/usr/local/include -I/usr/local/opt/libxslt/include'
export CXXFLAGS=$CFLAGS
export CPPFLAGS=$CXXFLAGS
export LDFLAGS='-L/usr/lib -L/usr/local/lib -L/usr/local/opt/libxslt/lib'
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_HOME=/usr/local/opt/android-sdk

ulimit -n 8192
[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
export wdurl='http://192.168.0.88:4444/wd/hub'
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
for i in $HOME/src/dotfiles/zsh/*.zsh
do
  source $i
done
