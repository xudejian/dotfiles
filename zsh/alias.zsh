which trash > /dev/null 2>&1 && alias rm=trash
vim -g --version > /dev/null 2>&1 && alias vi='vim -g --remote-tab-silent'
alias aag='ag -S --pager "less -r"'

gag () {
  ag -S --pager "less -r" "$@" `git rev-parse --show-toplevel 2>/dev/null`
}
