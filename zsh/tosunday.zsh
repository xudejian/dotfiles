#!/bin/zsh
function tosunday {
 TS=`gdate --date="\`gdate +%w\` day ago" -R`
 export GIT_AUTHOR_DATE="$TS"
 export GIT_COMMITTER_DATE="$TS"
}

function today {
 unset GIT_AUTHOR_DATE
 unset GIT_COMMITTER_DATE
}
