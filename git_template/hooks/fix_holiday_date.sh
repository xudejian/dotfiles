#!/bin/bash
fix_holiday_date () {
  if test "$(git config core.holiday)" != 'true'
  then
    return
  fi

  commit=$(git log -1 | sed -n 's/commit //gp')
  git stash
  git filter-branch --env-filter \
    "if test \$GIT_COMMIT = '$commit'
    then
      export GIT_AUTHOR_DATE='`.git/hooks/timestamp.coffee`'
    fi
    export GIT_COMMITTER_DATE=\"\$GIT_AUTHOR_DATE\"
    " && \
      rm -fr "$(git rev-parse --git-dir)/refs/original/"
  git stash pop
}
fix_holiday_date
