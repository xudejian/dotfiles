alias gc='my_git_commit -v'
alias gc!='my_git_commit -v --amend'
compdef _git my_git_commit=git-commit

my_git_commit () {
  if test "$(git config core.holiday)" = 'true'
  then
    date=`$(git rev-parse --git-dir)/hooks/timestamp.coffee`
    GIT_COMMITTER_DATE="$date" \
    git commit --date="$date" "$@"
  else
    git commit "$@"
  fi
}
