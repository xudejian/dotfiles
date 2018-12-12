gba | awk '{if (substr($1, 0, 13)=="chromium.org/"){name=substr($1, 14);system("git branch -m "$1" "name);}}'
